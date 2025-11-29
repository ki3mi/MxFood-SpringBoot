package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Sale;
import com.example.demo.model.SaleDetail;
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
    
    // Listar los productos
    public List<Sale> list(){
        return saleDAO.list();
    }

    public Sale getById(int id){
        Sale sale = saleDAO.getById(id);
        List<SaleDetail> saleDetails = saleDetailDAO.list(id);
        sale.setDetails(saleDetails);
        return sale;
    }

    
}
