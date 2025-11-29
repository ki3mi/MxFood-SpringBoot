package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.SaleDetail;
import com.example.demo.repository.SaleDetailDAO;

@Repository
public class SaleDetailRepository implements SaleDetailDAO{
    private final JdbcTemplate jdbcTemplate;

    public SaleDetailRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<SaleDetail> saleDetailRowMapper = (rs, rowNum) ->{
        return new SaleDetail(
            rs.getInt("Id"),
            rs.getInt("Venta_Id"),
            rs.getInt("Producto_Id"),
            rs.getInt("Cantidad"),
            rs.getBigDecimal("Subtotal")
        );
    };

    // Listar todos los detalles de venta
    public List<SaleDetail> list(int idSale){
        String query = "SELECT * FROM detalle_venta WHERE Venta_Id = ?";
        return jdbcTemplate.query(query, saleDetailRowMapper, idSale);
    }
}
