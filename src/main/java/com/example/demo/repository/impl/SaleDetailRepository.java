package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.model.SaleDetail;
import com.example.demo.repository.SaleDetailDAO;

@Repository
public class SaleDetailRepository implements SaleDetailDAO{
    private final JdbcTemplate jdbcTemplate;

    public SaleDetailRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveAll(List<SaleDetail> details, int saleId){
        String query = "INSERT INTO detalle_venta (Venta_Id, Producto_Id, Cantidad, SubTotal) VALUES (?,?,?,?)";
        for (SaleDetail d : details){
            jdbcTemplate.update(query, saleId, 
                        d.getProduct().getId(),
                        d.getCantidad(),
                        d.getCantidad(),
                        d.getSubTotal()
            );
        }
    }
}
