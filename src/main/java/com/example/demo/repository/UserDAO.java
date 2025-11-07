package com.example.demo.repository;

import com.example.demo.model.User;

public interface UserDAO {
    public User authUser(String user, String password);
}
