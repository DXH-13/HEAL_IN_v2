package utils;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Properties;
import java.util.UUID;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

//    private static final String TEMPLATE_PATH = "/web/views/email-template.html";
private static final String TEMPLATE_PATH = "D:\\FPT University\\Spring_2025\\EXE202\\HEAL_IN_v2\\web\\views\\email-template.html";

    private static final int LIMIT_MINUS = 10;

    public String generateToken() {
        return UUID.randomUUID().toString();
    }

//    public LocalDateTime expiredDateTime() {
//        return LocalDateTime.now().plusMinutes(LIMIT_MINUS);
//    }
    
    public static String expiredDateTime() {
        LocalDateTime expiredDateTime = LocalDateTime.now().plusMinutes(LIMIT_MINUS);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return expiredDateTime.format(formatter);
    }

    public boolean isExpiredTime(LocalDateTime time) {
        return LocalDateTime.now().isAfter(time);
    }

    public static boolean sendMail(String recipient, String resetLink) throws Exception {
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
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    
    public static void main(String[] args) {
        String testRecipient = "dangxuanhuyb52@gmail.com"; // Replace with the recipient's email
        String resetLink = "http://example.com/reset-password?token=abc123"; // Test reset link

        try {
            boolean result = sendMail(testRecipient, resetLink);
            if (result) {
                System.out.println("Test email sent successfully.");
            } else {
                System.out.println("Failed to send the test email.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
