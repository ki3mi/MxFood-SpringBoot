package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Product;
import com.example.demo.repository.ProductDAO;

@Repository
public class ProductRepository implements ProductDAO{

    private final JdbcTemplate jdbcTemplate;

    public ProductRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Product> productRowMapper = (rs, rowNum) -> {
        return new Product(
            rs.getInt("id"),
            rs.getString("nombre"),
            rs.getDate("fecha_creacion").toLocalDate(),
            rs.getInt("id_tipo_producto")
        );
    };

    
    public List<Product> listProducts(){
        String query = "SELECT id, nombre, fecha_creacion, id_tipo_producto FROM producto";
        return jdbcTemplate.query(query, productRowMapper);
    }
}
