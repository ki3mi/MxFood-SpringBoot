package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Category;
import com.example.demo.repository.CategoryDAO;

@Repository
public class CategoryRespository implements CategoryDAO{
    private final JdbcTemplate jdbcTemplate;

    public CategoryRespository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Category> categoryRowMapper = (rs, rowNum) -> {
        return new Category(
            rs.getInt("Id"),
            rs.getString("Nombre"),
            rs.getString("Descripcion"),
            rs.getString("Estado")
        );
    };

    // Listar categorias
    public List<Category> list(){
        String query = "SELECT * FROM categoria";
        return jdbcTemplate.query(query, categoryRowMapper);
    }

    // Crear Categoria
    public int createCategory(Category category){
        String query = "INSERT INTO categoria (Nombre, Descripcion, Estado) VALUES (?,?,?)";
        return jdbcTemplate.update(query,
                category.getNombre(),
                category.getDescripcion(),
                category.getEstado());
    }

    // Obtener categoria por ID
    public Category getCategoryById(int id){
        String query = "SELECT * FROM categoria WHERE Id = ?";
        return jdbcTemplate.queryForObject(query, categoryRowMapper, id);
    }

    // Actualizar categoria
    public int updateCategory(Category category){
        String query = "UPDATE categoria SET Nombre = ?, Descripcion = ?, Estado = ? WHERE Id = ?";
        return jdbcTemplate.update(query, 
        category.getNombre(),
        category.getDescripcion(),
        category.getEstado(),
        category.getId());
    }

    // Desactivar Categoria
    public int deactivateCategory(int id){
        String query = "UPDATE categoria SET Estado = 'Inactivo' WHERE Id = ?";
        return jdbcTemplate.update(query, id);
    }
}
