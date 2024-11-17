# Arpalink - Your Local Search Partner

## Overview
The Arpalink User Management System is a Java-based application that allows users to manage their accounts, including adding new users and retrieving a list of all registered users. This application utilizes a MySQL database to store user information.

## Project Structure
/arpalink-user-management 
│ ├── src 

│ ├── main 

│ │ ├── java

│ │ │ └── com

│ │ │ └── arpalink

│ │ │ ├── dao

│ │ │ │ ├── Databaseutil.java

│ │ │ │ └── UserDao.java

│ │ │ └── model

│ │ │ └── User.java

│ │ └── resources

│ └── test

│ └── java

│ ├── target

│ ├── classes

│ └── test-classes

│ └── .classpath


## Requirements
- Java Development Kit (JDK) 1.8 or higher
- MySQL Database
- Maven (for dependency management)

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/arpalink-user-management.git
   cd arpalink-user-management

2. **Configure Database**

Create a MySQL database named arpalink_db.
Update the Databaseutil.java file with your MySQL username and password:
private static final String USER = "your_username"; // replace with your MySQL username
private static final String PASSWORD = "your_password"; // replace with your MySQL password

3. **Build the Project**

Navigate to the project root directory and run:
mvn clean install

4. **Run the Application**
You can run the application by executing the main class

## Features
1. user id
2. username
3. password
4. email

## Troubleshooting
**Database Connection Issues:** Ensure that your MySQL server is running

**SQL Exceptions:** Verify the SQL syntax and ensure that the database schema matches the expected structure.

**Dependency Issues:** If you encounter issues with Maven dependencies, ensure you have an active internet connection and that your Maven settings are correctly configured.

