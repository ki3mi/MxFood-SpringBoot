package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserDAO;
import com.example.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService{
    private final UserDAO userDAO;

    public UserServiceImpl(UserDAO userDAO){
        this.userDAO = userDAO;
    }

    public List<User> listUsers(){return userDAO.list();}
    public void createUser(User user){userDAO.createUser(user);}
    public User getUserById(int id){return userDAO.getUserById(id);}
    public void updateUser(User user){userDAO.updateUser(user);}
    public void deactivateUser(int id){userDAO.deactivateUser(id);}
}
