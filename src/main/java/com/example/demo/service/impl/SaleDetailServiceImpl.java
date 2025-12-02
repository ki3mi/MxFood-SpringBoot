package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Product;
import com.example.demo.model.SaleDetail;
import com.example.demo.repository.ProductDAO;
import com.example.demo.repository.SaleDetailDAO;
import com.example.demo.service.SaleDetailService;

@Service
public class SaleDetailServiceImpl implements SaleDetailService{
    private final SaleDetailDAO saleDetailDAO;
    private final ProductDAO productDAO;

    public SaleDetailServiceImpl(SaleDetailDAO saleDetailDAO, ProductDAO productDAO){
        this.saleDetailDAO = saleDetailDAO;
        this.productDAO = productDAO;
    }

    public List<SaleDetail> list(int id){
        List<SaleDetail> listDetails = saleDetailDAO.list(id);
        for (SaleDetail saleDetail : listDetails) {
            int idProduct = saleDetail.getIdProducto();
            Product product = productDAO.getProductByIdTest(idProduct);
            saleDetail.setProduct(product);
        }
        return listDetails;
    }

    public void createDetail(SaleDetail saleDetail){
        Double precio = productDAO.getProductById(saleDetail.getIdProducto()).getPrecio();
        Double subTotal = precio * saleDetail.getCantidad();
        saleDetail.setSubTotal(subTotal);
        saleDetailDAO.createDetail(saleDetail);
    }
}
