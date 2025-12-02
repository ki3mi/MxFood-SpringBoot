package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Sale;

public interface SaleDAO {
    public List<Sale> list();
    public List<Sale> listPending();
    public Sale getById(int id);
    public int createSale(Sale sale);
    public int closeSale(int id, Double total, String estado);
}
