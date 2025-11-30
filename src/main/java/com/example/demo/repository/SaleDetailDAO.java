package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.SaleDetail;

public interface SaleDetailDAO {
    public List<SaleDetail> list(int idSale);
    public int createDetail(SaleDetail saleDetail);
}
