
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import utils.DBContext;

/**
 *
 * @author dangx
 */
public class DAOProduct {
     private DBContext db;

    public DAOProduct() {
        db = DBContext.getInstance();
    }
    
    
    //Get all products in system
    public Vector<Product> getAll(String sql) {
        Vector<Product> vector = new Vector<Product>();
        try {
            Statement state = db.getConnection().createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("Id");
                String name = rs.getString("Name");
                String representativeImage = rs.getString("RepresentativeImage");
                String description = rs.getString("Description");
                String additionalInfor = rs.getString("AdditionalInfor");
                String price = rs.getString("Price");
                int quantity = rs.getInt("Quantity");
                String createdAt = rs.getString("CreatedAt");
                String createdBy = rs.getString("CreatedBy");
                String updatedAt = rs.getString("UpdatedAt");
                String deactivatedAt = rs.getString("DeactivatedAt");
                String deactivatedBy = rs.getString("DeactivatedBy");
                int temp = rs.getInt("isActive");
                boolean isActive = (temp == 1 ? true : false);
                Product product = new Product(id, name, representativeImage, description, additionalInfor,
                        price, quantity, createdAt, createdBy, updatedAt, deactivatedAt,
                        deactivatedBy, isActive);
                vector.add(product);
            }
        } catch (SQLException e) {
            Logger.getLogger(DAOProduct.class.getName()).log(Level.SEVERE, null, e);
        }
        return vector;
    }

    public Vector<Product> getAllProduct() {
        String sql = "SELECT * FROM HEALIN.PRODUCT ";
        return getAll(sql);
    }
    
    
    
    
    public static void main(String[] args) {
        DAOProduct dao = new DAOProduct();
        Vector<Product> vector = new Vector();
        vector = dao.getAllProduct();
        for (Product product : vector) {
            System.out.println(product);
        }
    }
    
}
