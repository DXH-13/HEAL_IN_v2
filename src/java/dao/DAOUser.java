package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import utils.DBContext;

/**
 *
 * @author dangx
 */
public class DAOUser {

    private DBContext db;

    public DAOUser() {
        db = DBContext.getInstance();
    }

    //Get all users in system
    public Vector<User> getAll(String sql) {
        Vector<User> vector = new Vector<User>();
        try {
            Statement state = db.getConnection().createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("Id");
                String name = rs.getString("Name");
                String username = rs.getString("Username");
                String password = rs.getString("Password");
                String email = rs.getString("Email");
                String phoneNumber = rs.getString("PhoneNumber");
                String dateOfBirth = rs.getString("DateOfBirth");
                String gender = rs.getString("Gender");
                String image = rs.getString("Image");
                String accountType = rs.getString("AccountType");
                String createdAt = rs.getString("CreatedAt");
                String createdBy = rs.getString("CreatedBy");
                String updatedAt = rs.getString("UpdatedAt");
                String deactivatedAt = rs.getString("DeactivatedAt");
                String deactivatedBy = rs.getString("DeactivatedBy");
                int temp = rs.getInt("isActive");
                boolean isActive = (temp == 1 ? true : false);
                String googleId = rs.getString("GoogleId");
                String firstName = rs.getString("FirstName");
                String givenName = rs.getString("GivenName");
                String familyName = rs.getString("FamilyName");
                int tempGG = rs.getInt("VerifiedEmailGoogle");
                boolean verifiedEmail = (tempGG == 1 ? true : false);
                User user = new User(id, email, verifiedEmail, firstName, givenName,
                        familyName, image, googleId, name, username, password,
                        phoneNumber, dateOfBirth, gender, accountType, createdAt,
                        createdBy, updatedAt, deactivatedAt, deactivatedBy, isActive);
                vector.add(user);
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return vector;
    }

    public Vector<User> getAllUser() {
        String sql = "SELECT * FROM HEALIN.USER WHERE AccountType = 'NormalUser' ";
        return getAll(sql);
    }

    public User checkExistAccount(String emailOrUsername, String password) {
        String query = "SELECT * FROM HEALIN.USER WHERE (Email = ? OR Username = ?)"
                + " AND Password = ?";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(query);
            pstmt.setString(1, emailOrUsername);  // truyền email hoặc username
            pstmt.setString(2, emailOrUsername);  // truyền email hoặc username
            pstmt.setString(3, password);  // truyền mật khẩu
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    //Get the active user with username and password
    public User checkActiveAccount(String emailOrUsername, String password) {
        String query = "SELECT * FROM HEALIN.USER WHERE (Email = ? OR Username = ?)"
                + " AND Password = ? AND isActive = 1";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(query);
            pstmt.setString(1, emailOrUsername);  // truyền email hoặc username
            pstmt.setString(2, emailOrUsername);  // truyền email hoặc username
            pstmt.setString(3, password);  // truyền mật khẩu
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    //Get the user by Id
    public User findByID(int id) {
        String sql = "SELECT * FROM HEALIN.USER WHERE Id = ?";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public User findByEmail(String email) {
        String sql = "SELECT * FROM HEALIN.USER WHERE Email = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public User findByUsername(String username) {
        String sql = "SELECT * FROM HEALIN.USER WHERE Username = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public User findByPhoneNumber(String phoneNumber) {
        String sql = "SELECT * FROM HEALIN.USER WHERE PhoneNumber = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, phoneNumber);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Email"),
                        rs.getBoolean("VerifiedEmailGoogle"),
                        rs.getString("FirstName"),
                        rs.getString("GivenName"),
                        rs.getString("FamilyName"),
                        rs.getString("Image"),
                        rs.getString("GoogleId"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Gender"),
                        rs.getString("AccountType"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return user;
            }
        } catch (Exception e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public void updatePassword(String password, int userId) {
        String sql = "UPDATE user\n"
                + "SET Password = ?\n"
                + "WHERE Id = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, password);
            pstmt.setInt(2, userId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void updateUserProfile(User user) {
        String sql = "UPDATE user\n"
                + "SET \n"
                + "    Username = ?,\n"
                + "    Name = ?,\n"
                + "    Email = ?,\n"
                + "    PhoneNumber = ?,\n"
                + "    Gender = ?,\n"
                + "    DateOfBirth = ?,\n"
                + "    UpdatedAt = CURRENT_TIMESTAMP\n"
                + "WHERE Id = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPhoneNumber());
            pstmt.setString(5, user.getGender());
            pstmt.setString(6, user.getDateOfBirth());
            pstmt.setInt(7, user.getNormalUserId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public boolean insertUser(String username, String password, String email) {
        String accountType = "NormalUser";

        String sql = "INSERT INTO user (Name, Username, Password, Email, "
                + "PhoneNumber, DateOfBirth, Image, AccountType, CreatedAt, "
                + "CreatedBy, UpdatedAt, DeactivatedAt, DeactivatedBy, isActive)\n"
                + "VALUES (NULL, ?, ?, ?, NULL, NULL, NULL, ?, CURRENT_TIMESTAMP"
                + ", ?, NULL, NULL, NULL, 0)";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, email);
            pstmt.setString(4, accountType);
            pstmt.setString(5, username);

            int result = pstmt.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public boolean insertGmailUser(String email, String firstName, String givenName,
            String familyName, String image, String googleId, String name, int verifiedEmailGoogle) {
        String accountType = "GoogleUser";

        String sql = "INSERT INTO user (Name, Username, Password, Email, PhoneNumber,"
                + " DateOfBirth, Image, AccountType, CreatedAt, CreatedBy, UpdatedAt,"
                + " DeactivatedAt, DeactivatedBy, isActive, GoogleId, FirstName,"
                + " GivenName, FamilyName, VerifiedEmailGoogle) \n"
                + "VALUES (?, NULL, NULL, ?, NULL, NULL, ?, ?, CURRENT_TIMESTAMP,"
                + " NULL, NULL, NULL, NULL, 1, ?, ?, ?, ?, ?);";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, image);
            pstmt.setString(4, accountType);
            pstmt.setString(5, googleId);
            pstmt.setString(6, firstName);
            pstmt.setString(7, givenName);
            pstmt.setString(8, familyName);
            pstmt.setInt(9, verifiedEmailGoogle);

            int result = pstmt.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public void updateActiveStatus(int userId) {
        String sql = "UPDATE user\n"
                + "SET isActive = 1\n"
                + "WHERE Id = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, userId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public void deactivateAccount(int userId) {
        String sql = "UPDATE user\n"
                + "SET isActive = 0\n"
                + "WHERE Id = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, userId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    

    public static void main(String[] args) {
        DAOUser daoUser = new DAOUser();
        int id = 1;
        String pass = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
        daoUser.updatePassword(pass, id);
    }
}
