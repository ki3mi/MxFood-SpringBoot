package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.SaleDetail;
import com.example.demo.repository.SaleDetailDAO;
import com.example.demo.service.SaleDetailService;

@Service
public class SaleDetailServiceImpl implements SaleDetailService{
    private final SaleDetailDAO saleDetailDAO;

    public SaleDetailServiceImpl(SaleDetailDAO saleDetailDAO){
        this.saleDetailDAO = saleDetailDAO;
    }

    public List<SaleDetail> listSaleDetails(){return saleDetailDAO.listSaleDetails();}
}
