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

    private final RowMapper<SaleDetail> saleDetailRowMapper = (rs, rowNum) -> {
        return new SaleDetail(
            rs.getInt("Id"),
            rs.getInt("Venta_id"),
            rs.getInt("Product_Id"),
            rs.getInt("Cantidad"),
            rs.getBigDecimal("Subtotal")
        );
    };

    // Listar Detalles de venta
    public List<SaleDetail> listSaleDetails(){
        String query = "SELECT * FROM detalle_venta";
        return jdbcTemplate.query(query, saleDetailRowMapper);
    }

    // Listar Detalles de venta por ID de Venta
    public List<SaleDetail> listByIdVenta(int id){
        String query = "SELECT * FROM detalle_venta WHERE Venta_Id = ?";
        return jdbcTemplate.query(query, saleDetailRowMapper, id);
    }

    // Guardar todos los detalles de venta
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
