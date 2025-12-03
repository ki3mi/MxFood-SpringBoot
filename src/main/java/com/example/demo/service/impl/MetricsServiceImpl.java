package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Metrics;
import com.example.demo.repository.MetricsDAO;
import com.example.demo.service.MetricsService;

@Service
public class MetricsServiceImpl implements MetricsService{
    private final MetricsDAO metricsDAO;

    public MetricsServiceImpl(MetricsDAO metricsDAO){
        this.metricsDAO = metricsDAO;
    }

    // Obtener los datos par la metrica de ventas en los ultimos 6 meses separado por meses
    public List<Metrics> getTotalSales(){
        List<Metrics> listSales = metricsDAO.getTotalSales();
        return setAllParameters(listSales, 0.001, 2, "k");
    }

    // Obtener el total (Meses) de los 6 meses en String
    public String getTotalSixMonth(){
        List<Metrics> listSales = metricsDAO.getTotalSales();
        return getTotal(listSales, 2);
    }

    // Obtener total por categorias
    public List<Metrics> getTotalCategory(){
        List<Metrics> listCategories = metricsDAO.getTotalCategory();
        return setAllParameters(listCategories, 0.001, 2, "k");
    }
    // Obtener el total (Categorias) de los 6 meses en String
    public String getTotalSixCategory(){
        List<Metrics> listCategories = metricsDAO.getTotalCategory();
        return getTotal(listCategories, 2);
    }

    // Obtener total de productos vendidos por mes en 6 meses
    public List<Metrics> getTotalProducts(){
        List<Metrics> listProducts = metricsDAO.getTotalProducts();
        return setAllParameters(listProducts, 1, 0, "");
    }
    public String getTotalSixProducts(){
        List<Metrics> listProducts = metricsDAO.getTotalProducts();
        return getTotal(listProducts, 0);
    }



    // Lógica para asignar el valor porcentual y el formato del total
    public List<Metrics> setAllParameters(List<Metrics> listMetrics, double escala, int decimales, String prefijo){
        double total = 0.0;
        for (Metrics metric : listMetrics) {
            total = total + metric.getSubTotal();
        }
        double maxSubTotal = listMetrics.stream()
                            .mapToDouble(Metrics::getSubTotal)
                            .max()
                            .orElse(0);
        
        int porRestante = (int) (90 - maxSubTotal*100/total);

        for (Metrics metric : listMetrics) {
            int porcentual = (int) (porRestante + metric.getSubTotal()*100/total);
            metric.setPorcentual(porcentual);

            // Logica para guardar el formato del total del mes en miles
            double cantidad = metric.getSubTotal()*escala;
            String totalFormat = String.format("%."+decimales+"f", cantidad);
            metric.setTotalFormat(totalFormat + prefijo);
        }
        return listMetrics;
    }
    // Lógica para obtener el total de los usbtotales en las metricas
    public String getTotal(List<Metrics> listMetrics, int decimales){
        double total = 0.0;
        for (Metrics metric : listMetrics) {
            total = total + metric.getSubTotal();
        }
        String totalFormat = String.format("%."+decimales+"f", total);
        return totalFormat;
    }
}
