/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dangx
 */
public class CartXProduct {
    
    private int id;
    private int userId;
    private int productId;
    private int quantity;
    
    private String productName;
    private String productRepresentativeImage;
    private String productDescription;
    private String productAdditionalInfor;
    private String productPrice;
    private int productQuantity;
    
    private String createdAt;
    private String createdBy;
    private String updatedAt;
    private String deactivatedAt;
    private String deactivatedBy;
    private boolean isActive;

    public CartXProduct() {
    }

    public CartXProduct(int id, int userId, int productId, int quantity, 
            String productName, String productRepresentativeImage, 
            String productDescription, String productAdditionalInfor, 
            String productPrice, int productQuantity, String createdAt, 
            String createdBy, String updatedAt, String deactivatedAt, 
            String deactivatedBy, boolean isActive) {
        this.id = id;
        this.userId = userId;
        this.productId = productId;
        this.quantity = quantity;
        this.productName = productName;
        this.productRepresentativeImage = productRepresentativeImage;
        this.productDescription = productDescription;
        this.productAdditionalInfor = productAdditionalInfor;
        this.productPrice = productPrice;
        this.productQuantity = productQuantity;
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

    public int getUserId() {
        return userId;
    }

    public int getProductId() {
        return productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductRepresentativeImage() {
        return productRepresentativeImage;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public String getProductAdditionalInfor() {
        return productAdditionalInfor;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public int getProductQuantity() {
        return productQuantity;
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

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setProductRepresentativeImage(String productRepresentativeImage) {
        this.productRepresentativeImage = productRepresentativeImage;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public void setProductAdditionalInfor(String productAdditionalInfor) {
        this.productAdditionalInfor = productAdditionalInfor;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
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
        return "CartXProduct{" + "id=" + id + ", userId=" + userId + ", productId=" + productId + ", quantity=" + quantity + ", productName=" + productName + ", productRepresentativeImage=" + productRepresentativeImage + ", productDescription=" + productDescription + ", productAdditionalInfor=" + productAdditionalInfor + ", productPrice=" + productPrice + ", productQuantity=" + productQuantity + ", createdAt=" + createdAt + ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", deactivatedAt=" + deactivatedAt + ", deactivatedBy=" + deactivatedBy + ", isActive=" + isActive + '}';
    }
    
////    
    
}
