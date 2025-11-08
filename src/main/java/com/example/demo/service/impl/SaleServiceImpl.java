package com.example.demo.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Sale;
import com.example.demo.repository.SaleDAO;
import com.example.demo.repository.SaleDetailDAO;
import com.example.demo.service.SaleService;

@Service
public class SaleServiceImpl implements SaleService{
    private final SaleDAO saleDAO;
    private final SaleDetailDAO saleDetailDAO;

    public SaleServiceImpl(SaleDAO saleDAO, SaleDetailDAO saleDetailDAO){
        this.saleDAO = saleDAO;
        this.saleDetailDAO = saleDetailDAO;
    }

    @Transactional
    public void registerSale(Sale sale){
        int saleId = saleDAO.saveSale(sale);
        saleDetailDAO.saveAll(sale.getDetails(), saleId);
    }
}
