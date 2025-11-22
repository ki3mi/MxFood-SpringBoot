package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Sale;

public interface SaleService {
    public List<Sale> list();
    void registerSale(Sale sale);
    public Sale getById(int id);
}
