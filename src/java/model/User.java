package model;

import com.google.gson.annotations.SerializedName;

/**
 *
 * @author dangx
 */
public class User {

    private int normalUserId;

    @SerializedName("email")
    private String email;

    @SerializedName("verified_email")
    private boolean verifiedEmail;

    @SerializedName("first_name")
    private String firstName;

    @SerializedName("given_name")
    private String givenName;

    @SerializedName("family_name")
    private String familyName;

    @SerializedName("picture")
    private String image;

    @SerializedName("id")
    private String googleId;

    private String name;
    private String username;
    private String password;
    private String phoneNumber;
    private String dateOfBirth;
    private String gender;
    private String accountType;
    private String createdAt;
    private String createdBy;
    private String updatedAt;
    private String deactivatedAt;
    private String deactivatedBy;
    private boolean isActive;

    public User() {
    }

    public User(int normalUserId, String email, boolean verifiedEmail, String firstName, String givenName, String familyName, String image, String googleId, String name, String username, String password, String phoneNumber, String dateOfBirth, String gender, String accountType, String createdAt, String createdBy, String updatedAt, String deactivatedAt, String deactivatedBy, boolean isActive) {
        this.normalUserId = normalUserId;
        this.email = email;
        this.verifiedEmail = verifiedEmail;
        this.firstName = firstName;
        this.givenName = givenName;
        this.familyName = familyName;
        this.image = image;
        this.googleId = googleId;
        this.name = name;
        this.username = username;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.accountType = accountType;
        this.createdAt = createdAt;
        this.createdBy = createdBy;
        this.updatedAt = updatedAt;
        this.deactivatedAt = deactivatedAt;
        this.deactivatedBy = deactivatedBy;
        this.isActive = isActive;
    }

    public User(String email, boolean verifiedEmail, String firstName, String givenName, String familyName, String image, String googleId, String name) {
        this.email = email;
        this.verifiedEmail = verifiedEmail;
        this.firstName = firstName;
        this.givenName = givenName;
        this.familyName = familyName;
        this.image = image;
        this.googleId = googleId;
        this.name = name;
    }

    public User toMinimalUser() {
        return new User(this.email, this.verifiedEmail, this.firstName, this.givenName, this.familyName, this.image, this.googleId, this.name);
    }

    public int getNormalUserId() {
        return normalUserId;
    }

    public String getEmail() {
        return email;
    }

    public boolean isVerifiedEmail() {
        return verifiedEmail;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getGivenName() {
        return givenName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public String getImage() {
        return image;
    }

    public String getGoogleId() {
        return googleId;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }
    
    public String getGender() {
        return gender;
    }

    public String getAccountType() {
        return accountType;
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

    public void setNormalUserId(int normalUserId) {
        this.normalUserId = normalUserId;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setVerifiedEmail(boolean verifiedEmail) {
        this.verifiedEmail = verifiedEmail;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setGivenName(String givenName) {
        this.givenName = givenName;
    }

    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setGoogleId(String googleId) {
        this.googleId = googleId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
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
        return "User{" + "normalUserId=" + normalUserId + ", email=" + email + ", verifiedEmail=" + verifiedEmail + ", firstName=" + firstName + ", givenName=" + givenName + ", familyName=" + familyName + ", image=" + image + ", googleId=" + googleId + ", name=" + name + ", username=" + username + ", password=" + password + ", phoneNumber=" + phoneNumber + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", accountType=" + accountType + ", createdAt=" + createdAt + ", createdBy=" + createdBy + ", updatedAt=" + updatedAt + ", deactivatedAt=" + deactivatedAt + ", deactivatedBy=" + deactivatedBy + ", isActive=" + isActive + '}';
    }

}
