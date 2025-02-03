/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dangx
 */
public class Product {
    
    private int id;
    private String name;
    private String representativeImage;
    private String description;
    private String additionalInfor;
    private String price;
    private int quantity ;
    private String createdAt;
    private String createdBy;
    private String updatedAt;
    private String deactivatedAt;
    private String deactivatedBy;
    private boolean isActive;

    public Product() {
    }

    public Product(int id, String name, String representativeImage, 
            String description, String additionalInfor, String price, 
            int quantity, String createdAt, String createdBy, String updatedAt, 
            String deactivatedAt, String deactivatedBy, boolean isActive) {
        this.id = id;
        this.name = name;
        this.representativeImage = representativeImage;
        this.description = description;
        this.additionalInfor = additionalInfor;
        this.price = price;
        this.quantity = quantity;
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

    public String getName() {
        return name;
    }

    public String getRepresentativeImage() {
        return representativeImage;
    }
    
    public String getDescription() {
        return description;
    }

    public String getAdditionalInfor() {
        return additionalInfor;
    }

    public String getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
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

    public void setName(String name) {
        this.name = name;
    }
    
    public void setRepresentativeImage(String representativeImage) {
        this.name = representativeImage;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setAdditionalInfor(String additionalInfor) {
        this.additionalInfor = additionalInfor;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
        return "Product{" + "id=" + id + ", name=" + name + ", representativeImage=" + representativeImage + ", description=" + description + ", additionalInfor=" + additionalInfor + ", price=" + price + ", quantity=" + quantity + ", createdAt=" + createdAt + ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", deactivatedAt=" + deactivatedAt + ", deactivatedBy=" + deactivatedBy + ", isActive=" + isActive + '}';
    }
    
    
}
