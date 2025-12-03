package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Metrics;

public interface MetricsService {
    public List<Metrics> getTotalSales();
    public String getTotalSixMonth();
    public List<Metrics> getTotalCategory();
    public String getTotalSixCategory();
    public List<Metrics> getTotalProducts();
    public String getTotalSixProducts();
}
