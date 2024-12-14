package utils;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

    // Lưu token và thời gian hết hạn
    private static final ConcurrentHashMap<String, Long> tokenStore = new ConcurrentHashMap<>();
    private static final long TOKEN_EXPIRATION_TIME = 5 * 60 * 1000; // 5 phút

    private static final String TEMPLATE_PATH = "web/views/email-template.html"; // Đường dẫn cố định đến tệp HTML

    public static void sendMail(String recipient, String resetLink) throws Exception {
        System.out.println("Preparing to send email...");
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");

        String myAccountEmail = "huydang139203@gmail.com";
        String password = "bacgpgdyexlipimy";

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccountEmail, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            message.setSubject("Reset Your Password");

            // Đọc nội dung file HTML và chèn link reset
            String emailContent = new String(Files.readAllBytes(Paths.get(TEMPLATE_PATH)));
            emailContent = emailContent.replace("{{reset_link}}", resetLink);

            message.setContent(emailContent, "text/html; charset=UTF-8");
            Transport.send(message);
            System.out.println("Email sent successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String generateResetLink(String recipient) {
        // Xóa token cũ (nếu có)
        tokenStore.entrySet().removeIf(entry -> entry.getKey().startsWith(recipient));

        // Tạo token mới
        String token = UUID.randomUUID().toString();
        long expirationTime = System.currentTimeMillis() + TOKEN_EXPIRATION_TIME;
        tokenStore.put(recipient + "-" + token, expirationTime);

        // Link đặt lại mật khẩu
        return "http://yourdomain.com/reset-password?token=" + token + "&email=" + recipient;
    }

    public static boolean validateToken(String recipient, String token) {
        String key = recipient + "-" + token;
        Long expirationTime = tokenStore.get(key);
        if (expirationTime != null && System.currentTimeMillis() < expirationTime) {
            return true;
        }
        // Token không hợp lệ hoặc hết hạn
        tokenStore.remove(key);
        return false;
    }

    public static void main(String[] args) throws Exception {
        // Test gửi email với link reset
        String recipient = "dangxuanhuyb52@gmail.com";
        String resetLink = generateResetLink(recipient);
        sendMail(recipient, resetLink);

        // Kiểm tra token (giả lập click vào link)
        System.out.println("Validate token: " + validateToken(recipient, resetLink.split("=")[1]));
    }
}
