package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Sale;

public interface SaleDAO {
    public List<Sale> list();
    public int saveSale(Sale sale);
}
