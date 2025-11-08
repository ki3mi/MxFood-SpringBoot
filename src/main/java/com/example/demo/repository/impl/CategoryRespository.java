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

    public List<Category> list(){
        String query = "SELECT * FROM categoria";
        return jdbcTemplate.query(query, categoryRowMapper);
    }
}
