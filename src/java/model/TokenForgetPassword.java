/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dangx
 */
public class TokenForgetPassword {

    private int id;
    private int userId;
    private String token;
    private String expiryTime;
    private boolean isUsed;
    private String createdAt;
    private String createdBy;
    private String updatedAt;
    private String deactivatedAt;
    private String deactivatedBy;
    private boolean isActive;

    public TokenForgetPassword() {
    }

    public TokenForgetPassword(int userId, String token, String expiryTime, boolean isUsed) {
        this.userId = userId;
        this.token = token;
        this.expiryTime = expiryTime;
        this.isUsed = isUsed;
    }
    
    

    public TokenForgetPassword(int id, int userId, String token, String expiryTime, boolean isUsed, String createdAt, String createdBy, String updatedAt, String deactivatedAt, String deactivatedBy, boolean isActive) {
        this.id = id;
        this.userId = userId;
        this.token = token;
        this.expiryTime = expiryTime;
        this.isUsed = isUsed;
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

    public String getToken() {
        return token;
    }

    public String getExpiryTime() {
        return expiryTime;
    }

    public boolean isIsUsed() {
        return isUsed;
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

    public void setToken(String token) {
        this.token = token;
    }

    public void setExpiryTime(String expiryTime) {
        this.expiryTime = expiryTime;
    }

    public void setIsUsed(boolean isUsed) {
        this.isUsed = isUsed;
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
        return "TokenForgetPassword{" + "id=" + id + ", userId=" + userId + ", token=" + token + ", expiryTime=" + expiryTime + ", isUsed=" + isUsed + ", createdAt=" + createdAt + ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", deactivatedAt=" + deactivatedAt + ", deactivatedBy=" + deactivatedBy + ", isActive=" + isActive + '}';
    }
    
    
}
