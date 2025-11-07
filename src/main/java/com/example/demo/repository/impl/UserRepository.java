package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;
import com.example.demo.repository.UserDAO;

@Repository
public class UserRepository implements UserDAO{
    private final JdbcTemplate jdbcTemplate;
    public UserRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }
    private final RowMapper<User> userRowMapper = (rs, rowNum) -> {
        return new User(
            rs.getInt("Id"),
            rs.getString("Nombre"),
            rs.getString("Password"),
            rs.getString("Email"),
            rs.getString("Telefono"),
            rs.getString("DNI"),
            rs.getString("Estado")
        );
    };

    public User authUser(String user, String password){
        String sql = "SELECT * FROM usuario WHERE email = ? AND password = ?";
        List<User> usuarios = jdbcTemplate.query(sql, userRowMapper, user, password);
        return usuarios.isEmpty() ? null : usuarios.get(0);
    }
}
