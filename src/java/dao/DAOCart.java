/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import utils.DBContext;

/**
 *
 * @author dangx
 */
public class DAOCart {

    private DBContext db;

    public DAOCart() {
        db = DBContext.getInstance();
    }

    public Vector<Cart> getAll(String sql) {
        Vector<Cart> vector = new Vector<Cart>();
        try {
            Statement state = db.getConnection().createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("Id");
                int userId = rs.getInt("UserId");
                int productId = rs.getInt("ProductId");
                int quantity = rs.getInt("Quantity");
                String createdAt = rs.getString("CreatedAt");
                String createdBy = rs.getString("CreatedBy");
                String updatedAt = rs.getString("UpdatedAt");
                String deactivatedAt = rs.getString("DeactivatedAt");
                String deactivatedBy = rs.getString("DeactivatedBy");
                int temp = rs.getInt("isActive");
                boolean isActive = (temp == 1 ? true : false);

                Cart order = new Cart(id, userId, productId, quantity, createdAt,
                        createdBy, updatedAt, deactivatedAt, deactivatedBy, isActive
                );
                vector.add(order);
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, e);
        }
        return vector;
    }

    public Vector<Cart> getAllOrdersInCart(int userId) {
        String sql = "SELECT * FROM HEALIN.ORDERS WHERE UserId = "+userId+" AND isActive = 1 ";
        return getAll(sql);
    }

    public boolean insertOrder(int userId, int productId, int quantity) {
        String sql = "INSERT INTO orders (UserId, ProductId, Quantity, Options, CreatedAt, CreatedBy, isActive) "
                + "VALUES (?, ?, ?, 'Size: M, Color: Red', CURRENT_TIMESTAMP, 'Admin', 1) "
                + "ON DUPLICATE KEY UPDATE Quantity = Quantity + ?;";

        try ( PreparedStatement pstmt = db.getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            pstmt.setInt(2, productId);
            pstmt.setInt(3, quantity);
            pstmt.setInt(4, quantity);

            int result = pstmt.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }



    public static void main(String[] args) {
        DAOCart dao = new DAOCart();
        Vector<Cart> orders = dao.getAllOrdersInCart(1);
        for (Cart order : orders) {
            System.out.println(order);
        }

    }
}
