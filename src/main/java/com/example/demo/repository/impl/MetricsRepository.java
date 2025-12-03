package com.example.demo.repository.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Metrics;
import com.example.demo.repository.MetricsDAO;

@Repository
public class MetricsRepository implements MetricsDAO{
    private final JdbcTemplate jdbcTemplate;

    public MetricsRepository(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Metrics> metricsRowMapper = (rs, rowNum) -> {
        return new Metrics(
            rs.getDouble("total"), //total del mes
            rs.getString("atributo") //nombre del mes
        );
    };

    public List<Metrics> getTotalSales(){
        String query = """
                        SELECT
                            DATE_FORMAT(Fecha, ?) AS atributo,
                            SUM(Total) AS total
                        FROM venta
                        WHERE Fecha >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
                        GROUP BY YEAR(Fecha), MONTH(Fecha)
                        ORDER BY YEAR(Fecha) DESC, MONTH(Fecha) ASC
                        """;
        return jdbcTemplate.query(query, metricsRowMapper, "%M");
    }

    // Completada
    public List<Metrics> getTotalCategory(){
        String query = """
                SELECT
                    c.Nombre AS atributo,
                    SUM(d.Subtotal) AS total
                FROM detalle_venta d
                INNER JOIN producto p ON d.Producto_Id = p.Id
                INNER JOIN categoria c ON p.Categoria_Id = c.Id
                INNER JOIN venta v ON d.Venta_Id = v.Id
                WHERE v.Estado = ?
                GROUP BY c.Nombre
                ORDER BY total ASC
                LIMIT 6;
                """;
        return jdbcTemplate.query(query, metricsRowMapper, "Completada");
    }

    // Productos totales vendidos por mes en los ultimos 6 meses %M
    public List<Metrics> getTotalProducts(){
        String query = """
                SELECT 
                    DATE_FORMAT(v.Fecha, ?) AS atributo,
                    SUM(d.Cantidad) AS total
                FROM detalle_venta d
                INNER JOIN venta v ON d.Venta_Id = v.Id
                WHERE v.Fecha >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
                GROUP BY YEAR(v.Fecha), MONTH(v.Fecha)
                ORDER BY YEAR(v.Fecha) DESC, MONTH(v.Fecha) ASC;
                """;
        return jdbcTemplate.query(query, metricsRowMapper, "%M");
    }
}
