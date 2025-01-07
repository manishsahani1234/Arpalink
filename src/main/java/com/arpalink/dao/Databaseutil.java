package com.arpalink.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databaseutil {
    private static final String URL = "jdbc:mysql://localhost:3306/arpalink_db";
    private static final String USER = "your_username"; // replace with your MySQL username
    private static final String PASSWORD = "your_password"; // replace with your MySQL password

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}