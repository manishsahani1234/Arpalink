package com.arpalink.service;

import com.arpalink.dao.UserDao;
import com.arpalink.model.User;

public class UserService {
    private UserDao userDao = new UserDao();

    public void registerUser (User user) {
        userDao.addUser (user);
    }

    public List<User> listUsers() {
        return userDao.getAllUsers();
    }
}