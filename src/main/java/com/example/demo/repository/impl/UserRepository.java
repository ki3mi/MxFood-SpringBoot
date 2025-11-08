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

    // Listar Usuarios
    public List<User> list(){
        String query = "SELECT * FROM usuario";
        return jdbcTemplate.query(query, userRowMapper);
    }

    // Crear Usuario
    public int createUser(User user){
        String query = "INSERT INTO usuario (Nombre, Password, Email, Telefono, DNI, Estado) VALUES (?,?,?,?,?,?)";
        return jdbcTemplate.update(query, 
                user.getNombre(),
                user.getPassword(),
                user.getEmail(),
                user.getTelefono(),
                user.getDni(),
                user.getEstado()
                );
    }

    // Obtener usuario por ID
    public User getUserById(int id){
        String query = "SELECT * FROM usuario WHERE Id = ?";
        return jdbcTemplate.queryForObject(query, userRowMapper, id);
    }

    // Actualizar usuario
    public int updateUser(User user){
        String query = "UPDATE usuario SET Nombre = ?, Password = ?, Email = ?, Telefono = ?, DNI = ?, Estado = ? WHERE Id = ?";
        return jdbcTemplate.update(query, 
                user.getNombre(),
                user.getPassword(),
                user.getEmail(),
                user.getTelefono(),
                user.getDni(),
                user.getEstado(),
                user.getId()
                );
    }

    // Desactivar usuario
    public int deactivateUser(int id){
        String query = "UPDATE usuario SET Estado = 'Inactivo' WHERE Id = ?";
        return jdbcTemplate.update(query, id);
    }
}
