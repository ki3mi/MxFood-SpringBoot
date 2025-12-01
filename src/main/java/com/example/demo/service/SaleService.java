package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Sale;

public interface SaleService {
    public List<Sale> list();
    public Sale getById(int id);
    public int createSale(Sale sale);
    void closeSale(int id);
}
