package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.SaleDetail;

public interface SaleDetailDAO {
    void saveAll(List<SaleDetail> details, int saleId);
}
