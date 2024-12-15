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
                String image = rs.getString("Image");
                String accountType = rs.getString("AccountType");
                String createdAt = rs.getString("CreatedAt");
                String createdBy = rs.getString("CreatedBy");
                String updatedAt = rs.getString("UpdatedAt");
                String deactivatedAt = rs.getString("DeactivatedAt");
                String deactivatedBy = rs.getString("DeactivatedBy");
                int temp = rs.getInt("isActive");
                boolean isActive = (temp == 1 ? true : false);

                User user = new User(id, name, username, password, email,
                        phoneNumber, dateOfBirth, image, accountType, createdAt,
                        createdBy, updatedAt, deactivatedAt, deactivatedBy, isActive);
                vector.add(user);
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return vector;
    }

    public Vector<User> getAllUser() {
        String sql = "SELECT * FROM User WHERE AccountType = 'User' ";
        return getAll(sql);
    }
    
    
    public User checkExistAccount(String email, String passuord) {
        String query = "SELECT * FROM User WHERE Email = ? AND Password = ? ";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, passuord);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Email"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Image"),
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
    public User checkActiveAccount(String email, String passuord) {
        String query = "SELECT * FROM User WHERE Email = ? AND Password = ? AND isActive = 1 ";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, passuord);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Email"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Image"),
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
        String sql = "SELECT * FROM User WHERE Id = ?";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Email"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Image"),
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
        String sql = "SELECT * FROM User WHERE Email = '?' ";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("ID"),
                        rs.getString("Name"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Email"),
                        rs.getString("PhoneNumber"),
                        rs.getString("DateOfBirth"),
                        rs.getString("Image"),
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

    public static void main(String[] args) {
        DAOUser dao = new DAOUser();
        Vector<User> users = dao.getAllUser();
        System.out.println(users);
    }

}
