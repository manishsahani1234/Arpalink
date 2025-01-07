CREATE DATABASE arpalinkdb;
USE arpalinkdb;

-- Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Categories Table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

-- Businesses Table
CREATE TABLE Businesses (
    business_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    category_id INT,
    address VARCHAR(255),
    phone VARCHAR(15),
    website VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Reviews Table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    business_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (business_id) REFERENCES Businesses(business_id)
);

-- Services Table
CREATE TABLE Services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    business_id INT,
    service_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (business_id) REFERENCES Businesses(business_id)
);

-- Business Hours Table
CREATE TABLE BusinessHours (
    hours_id INT PRIMARY KEY AUTO_INCREMENT,
    business_id INT,
    day_of_week VARCHAR(10),
    open_time TIME,
    close_time TIME,
    FOREIGN KEY (business_id) REFERENCES Businesses(business_id)
);

-- User Profiles Table
CREATE TABLE UserProfiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    profile_picture VARCHAR(255),
    bio TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Favorites Table
CREATE TABLE Favorites (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    business_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (business_id) REFERENCES Businesses(business_id)
);

-- Notifications Table
CREATE TABLE Notifications (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    message TEXT,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Sample Data Insertion (Optional)
-- Adding sample categories
INSERT INTO Categories (category_name) VALUES ('Restaurant'), ('Hospital'), ('Shop'), ('Service Center');

-- Adding a sample user
INSERT INTO Users (username, email, password) VALUES ('exampleUser ', 'user@example.com', 'hashedPassword');

-- Adding a sample business
INSERT INTO Businesses (name, description, category_id, address, phone, website) 
VALUES ('Example Restaurant', 'A great place to eat.', 1, '123 Main St, City', '1234567890', 'http://example-restaurant.com');

-- Adding a sample review
INSERT INTO Reviews (user_id, business_id, rating, comment) 
VALUES (1, 1, 5, 'Amazing food and service!');

-- Adding a sample service
INSERT INTO Services (business_id, service_name, price) 
VALUES (1, 'Dine-in Service', 20.00);

-- Adding business hours
INSERT INTO BusinessHours (business_id, day_of_week, open_time, close_time) 
VALUES (1, 'Monday', '09:00:00', '22:00:00');