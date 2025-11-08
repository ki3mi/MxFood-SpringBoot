package com.example.demo.service;

import java.util.List;

import com.example.demo.model.User;

public interface UserService {
    public List<User> listUsers();
    void createUser(User user);
    public User getUserById(int id);
    void updateUser(User user);
    void deactivateUser(int id);
}
