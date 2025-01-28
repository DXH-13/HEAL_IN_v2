package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ProductImages;
import utils.DBContext;

public class DAOProductImages {

    private DBContext db;

    public DAOProductImages() {
        db = DBContext.getInstance();
    }

    //Get all products in system
    public Vector<ProductImages> getAll(String sql) {
        Vector<ProductImages> vector = new Vector<ProductImages>();
        try {
            Statement state = db.getConnection().createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("Id");
                int productId = rs.getInt("ProductId");
                String name = rs.getString("Name");
                String imagePath = rs.getString("ImagePath");
                String createdAt = rs.getString("CreatedAt");
                String createdBy = rs.getString("CreatedBy");
                String updatedAt = rs.getString("UpdatedAt");
                String deactivatedAt = rs.getString("DeactivatedAt");
                String deactivatedBy = rs.getString("DeactivatedBy");
                int temp = rs.getInt("isActive");
                boolean isActive = (temp == 1 ? true : false);
                ProductImages productImages = new ProductImages(id, productId, name,
                        imagePath, createdAt, createdBy, updatedAt, deactivatedAt,
                        deactivatedBy, isActive);
                vector.add(productImages);
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOProductImages.class.getName()).log(Level.SEVERE, null, e);
        }
        return vector;
    }

    public Vector<ProductImages> getAllProductImages() {
        String sql = "SELECT * FROM HEALIN.PRODUCTIMAGES ";
        return getAll(sql);
    }

    public Vector<ProductImages> getAllProductImagesByProductId(int productId) {
        Vector<ProductImages> vector = new Vector<>();
        String sql = "SELECT product.*,  productimages.* \n"
                + "FROM productimages \n"
                + "INNER JOIN product ON productimages.ProductId = product.Id \n"
                + "WHERE productimages.ProductId = ?";
        try ( PreparedStatement st = db.getConnection().prepareStatement(sql)) {
            st.setInt(1, productId);
            try ( ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    ProductImages productImages = new ProductImages(
                            rs.getInt("Id"),
                            rs.getInt("ProductId"),
                            rs.getString("Name"),
                            rs.getString("ImagePath"),
                            rs.getString("CreatedAt"),
                            rs.getString("CreatedBy"),
                            rs.getString("UpdatedAt"),
                            rs.getString("DeactivatedAt"),
                            rs.getString("DeactivatedBy"),
                            rs.getBoolean("isActive")
                    );
                    vector.add(productImages);
                }
            }
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }
        return vector;
    }

    public static void main(String[] args) {
        int productId = 1;
        DAOProductImages dao = new DAOProductImages();
        Vector<ProductImages> vector = new Vector();
        vector = dao.getAllProductImagesByProductId(productId);
        for (ProductImages productImages : vector) {
            System.out.println(productImages);
        }
    }
}
