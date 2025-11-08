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
    public List<Product> listProductsCat(){return productDAO.listProductsCat();}
    public void createProduct(Product product){productDAO.createProduct(product);}
    public Product getProductById(int id){return productDAO.getProductById(id);}
    public void updateProduct(Product product){productDAO.updateProduct(product);}
    public void deactivateProduct(int id){productDAO.deactivateProduct(id);}
}
