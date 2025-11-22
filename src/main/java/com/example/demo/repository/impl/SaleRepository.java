package com.example.demo.repository.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Sale;
import com.example.demo.repository.SaleDAO;

@Repository
public class SaleRepository implements SaleDAO{
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public SaleRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Sale> saleRowMapper = (rs, rowNum) -> {
        return new Sale(
            rs.getInt("Id"),
            rs.getString("Nombre"),
            rs.getString("Telefono"),
            rs.getString("DNI"),
            rs.getString("Direccion"),
            rs.getString("Tipo"),
            rs.getDate("Fecha"),
            rs.getString("Estado"),
            rs.getBigDecimal("Total"),
            rs.getInt("Usuario_Id")
        );
    };
    // Listar las Ventas
    public List<Sale> list(){
        String query = "SELECT * FROM venta";
        return jdbcTemplate.query(query, saleRowMapper);
    }

    // Obtener venta por id
    public Sale getById(int id){
        String query = "SELECT * FROM venta WHERE Id = ?";
        return jdbcTemplate.queryForObject(query, saleRowMapper, id);
    }
    // Guardar una Venta
    public int saveSale(Sale sale){
        String query = "INSERT INTO venta (Nombre, Telefono, DNI, Direccion, Tipo, Fecha, Estado, Total, Usuario_Id) VALUES (?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(query, 
                sale.getNombre(),
                sale.getTelefono(),
                sale.getDni(),
                sale.getDireccion(),
                sale.getTipo(),
                sale.getFecha(),
                sale.getEstado(),
                sale.getTotal(),
                sale.getUserId()
        );
        return jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
    }
}
