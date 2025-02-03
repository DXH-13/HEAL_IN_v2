package model;

/**
 *
 * @author dangx
 */
public class ProductImages {

    private int id;
    private int productId;
    private String name;
    private String imagePath;
    private String createdAt;
    private String createdBy;
    private String updatedAt;
    private String deactivatedAt;
    private String deactivatedBy;
    private boolean isActive;

    public ProductImages() {
    }

    public ProductImages(int id, int productId, String name, String imagePath, String createdAt, String createdBy, String updatedAt, String deactivatedAt, String deactivatedBy, boolean isActive) {
        this.id = id;
        this.productId = productId;
        this.name = name;
        this.imagePath = imagePath;
        this.createdAt = createdAt;
        this.createdBy = createdBy;
        this.updatedAt = updatedAt;
        this.deactivatedAt = deactivatedAt;
        this.deactivatedBy = deactivatedBy;
        this.isActive = isActive;
    }

    public int getId() {
        return id;
    }

    public int getProductId() {
        return productId;
    }

    public String getName() {
        return name;
    }

    public String getImagePath() {
        return imagePath;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public String getDeactivatedAt() {
        return deactivatedAt;
    }

    public String getDeactivatedBy() {
        return deactivatedBy;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public void setDeactivatedAt(String deactivatedAt) {
        this.deactivatedAt = deactivatedAt;
    }

    public void setDeactivatedBy(String deactivatedBy) {
        this.deactivatedBy = deactivatedBy;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    @Override
    public String toString() {
        return "ProductImages{" + "id=" + id + ", productId=" + productId + ", name=" + name + ", imagePath=" + imagePath + ", createdAt=" + createdAt + ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", deactivatedAt=" + deactivatedAt + ", deactivatedBy=" + deactivatedBy + ", isActive=" + isActive + '}';
    }
    
    
}
