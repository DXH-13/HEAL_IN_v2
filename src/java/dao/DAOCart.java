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
import model.CartXProduct;
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

    public Vector<Cart> getAllCart(int userId) {
        String sql = "SELECT * FROM HEALIN.CART WHERE UserId = " + userId + " AND isActive = 1 ";
        return getAll(sql);
    }

    public boolean insertCart(int userId, int productId, int quantity) {
        String sql = "INSERT INTO cart (UserId, ProductId, Quantity, CreatedAt, CreatedBy, isActive) "
                + "VALUES (?, ?, ?, CURRENT_TIMESTAMP, 'Admin', 1) "
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

    public Vector<CartXProduct> getAllCartByUserId(int userId) {
        Vector<CartXProduct> vector = new Vector<>();
        String sql = "SELECT cart.*, product.Name, product.RepresentativeImage, "
                + "product.Description, product.AdditionalInfor, product.Price, "
                + "product.Quantity AS ProductQuantity \n"
                + "FROM cart \n"
                + "INNER JOIN product ON cart.ProductId = product.Id \n"
                + "WHERE cart.UserId = ?";
        try ( PreparedStatement st = db.getConnection().prepareStatement(sql)) {
            st.setInt(1, userId);
            try ( ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    CartXProduct cartXProduct = new CartXProduct(
                            rs.getInt("Id"),
                            rs.getInt("UserId"),
                            rs.getInt("ProductId"),
                            rs.getInt("Quantity"),
                            rs.getString("Name"),
                            rs.getString("RepresentativeImage"),
                            rs.getString("Description"),
                            rs.getString("AdditionalInfor"),
                            rs.getString("Price"),
                            rs.getInt("Quantity"),
                            rs.getString("CreatedAt"),
                            rs.getString("CreatedBy"),
                            rs.getString("UpdatedAt"),
                            rs.getString("DeactivatedAt"),
                            rs.getString("DeactivatedBy"),
                            rs.getBoolean("isActive")
                    );
                    vector.add(cartXProduct);
                }
            }
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }
        return vector;
    }

    public int getProductCountByUserId(int userId) {
        String sql = "SELECT COUNT(ProductId) AS ProductCount FROM cart WHERE UserId = ? GROUP BY UserId";
        int productCount = 0;

        try ( PreparedStatement pstmt = db.getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, userId); // Thiết lập giá trị cho tham số UserId
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                productCount = rs.getInt("ProductCount"); // Lấy giá trị từ cột ProductCount
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
        }

        return productCount;
    }

    public boolean deleteCart(int userId, int productId) {
        String sql = "DELETE FROM cart\n"
                + "WHERE UserId = ? AND ProductId = ?;";

        try ( PreparedStatement pstmt = db.getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            pstmt.setInt(2, productId);

            int result = pstmt.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public void updateQuantity(int userId, int productId, int quantity) {
        String sql = "UPDATE cart\n"
                + "SET Quantity = ?\n"
                + "WHERE UserId = ? AND ProductId= ?;";
        try {
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, quantity);
            pstmt.setInt(2, userId);
            pstmt.setInt(3, productId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public float getProductTotal(int userId, int productId) {
        String sql = "SELECT SUM(p.Price * c.Quantity) AS TotalPrice\n"
                + "FROM cart c\n"
                + "JOIN product p ON c.ProductId = p.Id\n"
                + "WHERE c.UserId = ? AND c.ProductId = ?;";
        float productTotal = 0;

        try ( PreparedStatement pstmt = db.getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            pstmt.setInt(2, productId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                productTotal = rs.getFloat("TotalPrice");
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
        }

        return productTotal;
    }

    public float getCartTotal(int userId) {
        String sql = "SELECT SUM(p.Price * c.Quantity) AS CartTotal\n"
                + "FROM cart c\n"
                + "JOIN product p ON c.ProductId = p.Id\n"
                + "WHERE c.UserId = ? AND c.isActive = 1;";
        float cartTotal = 0;

        try ( PreparedStatement pstmt = db.getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                cartTotal = rs.getFloat("CartTotal");
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOCart.class.getName()).log(Level.SEVERE, null, e);
        }

        return cartTotal;
    }

    public static void main(String[] args) {
        DAOCart dao = new DAOCart();
        float a = dao.getCartTotal(1);
        System.out.println(a);

    }
}
