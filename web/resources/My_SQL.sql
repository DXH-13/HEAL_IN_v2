CREATE DATABASE HEALIN;

USE HEALIN;

CREATE TABLE user (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Username VARCHAR(255),
    Password VARCHAR(255),
    Email VARCHAR(255) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(50),
    DateOfBirth VARCHAR(255),
    Image VARCHAR(255),
    AccountType ENUM('NormalUser', 'Admin', 'GoogleUser') NOT NULL,
    CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT,
    GoogleId VARCHAR(255), 
    FirstName VARCHAR(255), 
    GivenName VARCHAR(255), 
    FamilyName VARCHAR(255), 
    VerifiedEmailGoogle BIT ,
    Gender VARCHAR(45)
);



CREATE TABLE token_forget_password (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL,
    Token VARCHAR(255),
	isUsed BIT NOT NULL,
    ExpiryTime VARCHAR(50) NOT NULL,
    CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1,
    FOREIGN KEY (UserId) REFERENCES user(Id)
);




CREATE TABLE product (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    RepresentativeImage VARCHAR(500),
	Description VARCHAR(500),
    AdditionalInfor TEXT,
    Price VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL,
    CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1
);



CREATE TABLE productimages (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductId INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    ImagePath VARCHAR(500),
    CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1,
	FOREIGN KEY (ProductId) REFERENCES product(Id)
);


CREATE TABLE orders (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL,
    ProductId INT NOT NULL,
    ProductImagePath VARCHAR(500),
    Quantity INT,
    Options VARCHAR(50),
	CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1,
    FOREIGN KEY (UserId) REFERENCES user(Id),
    FOREIGN KEY (ProductId) REFERENCES product(Id)
);

CREATE TABLE cart (
	Id INT AUTO_INCREMENT PRIMARY KEY,
	OrderId INT NOT NULL,
    CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1,
    FOREIGN KEY (OrderId) REFERENCES orders(Id)
);

CREATE TABLE checkout (
	Id INT AUTO_INCREMENT PRIMARY KEY,
	OrderId INT NOT NULL,
	PaymentMethod VARCHAR(50),
	CreatedAt VARCHAR(50) NOT NULL,
    CreatedBy VARCHAR(50),
    UpdatedAt VARCHAR(50),
    DeactivatedAt VARCHAR(50),
    DeactivatedBy VARCHAR(50),
    isActive BIT DEFAULT 1,
    FOREIGN KEY (OrderId) REFERENCES orders(Id)
);


USE HEALIN;

INSERT INTO user (Name, Username, Password, Email, PhoneNumber, DateOfBirth, Image, AccountType, CreatedAt, CreatedBy, UpdatedAt, DeactivatedAt, DeactivatedBy, isActive, GoogleId, FirstName, GivenName, FamilyName, VerifiedEmailGoogle) 
VALUES ('huy', 'huy', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'dangxuanhuyb52@gmail.com', '123456789', '2003-13-09', 'profile.jpg', 'NormalUser', '2024-12-24 12:00:00', 'System', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

SELECT * FROM HEALIN.USER WHERE Username = 'huy';













