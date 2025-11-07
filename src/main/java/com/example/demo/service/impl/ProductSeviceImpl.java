package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Product;
import com.example.demo.repository.ProductDAO;
import com.example.demo.service.ProductService;

@Service
public class ProductSeviceImpl implements ProductService{
    private final ProductDAO productDAO;

    public ProductSeviceImpl(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public List<Product> listProducts(){return productDAO.listProducts();};
}
