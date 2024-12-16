/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TokenForgetPassword;
import model.User;
import utils.DBContext;

/**
 *
 * @author dangx
 */
public class DAOTokenForgetPassword {

    private DBContext db;

    public DAOTokenForgetPassword() {
        db = DBContext.getInstance();
    }

    public boolean addTokenForgetPassword(TokenForgetPassword token, User user) {
        String sql = "INSERT INTO token_forget_password (UserId, Token, isUsed, "
                + "ExpiryTime, CreatedAt, CreatedBy, UpdatedAt, DeactivatedAt, "
                + "DeactivatedBy, isActive) \n"
                + "VALUES (?, ?, 0, ?, CURRENT_TIMESTAMP, ?, NULL, NULL, NULL, 1);";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, token.getUserId());
            pstmt.setString(2, token.getToken());
            pstmt.setString(3, token.getExpiryTime());
            pstmt.setString(4, user.getUsername());

            int result = pstmt.executeUpdate();
            return result > 0;
        } catch (SQLException ex) {
            Logger.getLogger(DAOTokenForgetPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public TokenForgetPassword getTokenForgetPassword(String token) {
        String query = "SELECT * FROM token_forget_password WHERE Token = ? ";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(query);
            pstmt.setString(1, token);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                TokenForgetPassword tokenForgetPassword = new TokenForgetPassword(
                        rs.getInt("Id"),
                        rs.getInt("UserId"),
                        rs.getString("Token"),
                        rs.getBoolean("isUsed"),
                        rs.getString("ExpiryTime"),
                        rs.getString("CreatedAt"),
                        rs.getString("CreatedBy"),
                        rs.getString("UpdatedAt"),
                        rs.getString("DeactivatedAt"),
                        rs.getString("DeactivatedBy"),
                        rs.getBoolean("isActive")
                );
                return tokenForgetPassword;
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOTokenForgetPassword.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public void updateStatus(TokenForgetPassword token) {
        System.out.println("token = " + token);
        String sql = "UPDATE token_forget_password\n"
                + "SET isUsed = ?\n"
                + "WHERE Token = ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setBoolean(1, token.isIsUsed());
            pstmt.setString(2, token.getToken());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOTokenForgetPassword.class.getName()).log(Level.SEVERE, null, e);
        }
    }

}
