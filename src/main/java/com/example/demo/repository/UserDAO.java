package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.User;

public interface UserDAO {
    public User authUser(String user, String password);
    public List<User> list();
    public int createUser(User user);
    public User getUserById(int id);
    public int updateUser(User user);
    public int deactivateUser(int id);
}
