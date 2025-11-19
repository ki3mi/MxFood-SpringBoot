package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.SaleDetail;

public interface SaleDetailDAO {
    public List<SaleDetail> list(int idSale);
    void saveAll(List<SaleDetail> details, int saleId);
    public List<SaleDetail> listSaleDetails();
    public List<SaleDetail> listByIdVenta(int id);
}
