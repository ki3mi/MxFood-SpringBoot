package com.example.demo.service.impl;

import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserDAO;
import com.example.demo.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService{
    private final UserDAO userDAO;
    public AuthServiceImpl(UserDAO userDAO){
        this.userDAO = userDAO;
    }

    public User login(String user, String password){
        return userDAO.authUser(user, password);
    }
}
