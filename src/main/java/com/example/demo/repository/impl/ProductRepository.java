package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Category;
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
            rs.getInt("Id"),
            rs.getString("Nombre"),
            rs.getString("Descripcion"),
            rs.getDouble("Precio"),
            rs.getString("Estado"),
            rs.getInt("Categoria_Id")
        );
    };

    private final RowMapper<Product> productCatRowMapper = (rs, rowNum) -> {
        Category category = new Category(
            rs.getInt("c_Id"),
            rs.getString("c_Nombre"),
            rs.getString("c_Descripcion"),
            rs.getString("c_Estado")
        );
        return new Product(
            rs.getInt("Id"),
            rs.getString("Nombre"),
            rs.getString("Descripcion"),
            rs.getDouble("Precio"),
            rs.getString("Estado"),
            rs.getInt("Categoria_Id"),
            category
        );
    };

    // Listar productos sin categoria
    public List<Product> listProducts(){
        String query = "SELECT Id, Nombre, Descripcion, Precio, Estado, Categoria_Id FROM producto";
        return jdbcTemplate.query(query, productRowMapper);
    }

    // Listar productos con Categoria
    public List<Product> listProductsCat(){
        String query = """
                SELECT 
                    p.Id, p.Nombre, p.Descripcion, p.Precio, p.Estado, p.Estado, p.Categoria_Id,
                    c.Id AS c_Id, c.Nombre AS c_Nombre, c.Descripcion AS c_Descripcion, c.Estado AS c_Estado
                FROM producto p
                INNER JOIN categoria c ON p.Categoria_Id = c.Id
                """;
        return jdbcTemplate.query(query, productCatRowMapper);
    }

    // Crear un producto
    public int createProduct(Product product){
        String query = "INSERT INTO producto (Nombre, Descripcion, Precio, Estado, Categoria_Id) VALUES (?,?,?,?,?)";
        return jdbcTemplate.update(query, 
                product.getNombre(), 
                product.getDescripcion(), 
                product.getPrecio(), 
                product.getEstado(), 
                product.getCategoryId());
    }
}
