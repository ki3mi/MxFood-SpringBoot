package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Metrics;

public interface MetricsDAO {
    public List<Metrics> getTotalSales();
    public List<Metrics> getTotalCategory();
    public List<Metrics> getTotalProducts();
}
