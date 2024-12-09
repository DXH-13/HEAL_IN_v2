/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

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

                User user = new User(id, name, username, password, email, phoneNumber,
                        dateOfBirth, image, accountType, createdAt, createdBy, updatedAt, deactivatedAt, deactivatedBy, isActive);
                vector.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
    
    public Vector<User> getAllUser() {
        String sql = "select * from User where AccountType = 'User' ";
        return getAll(sql);
    }
    
    
}
