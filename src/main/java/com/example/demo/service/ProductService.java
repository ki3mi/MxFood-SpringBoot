package com.example.demo.service;

import java.util.List;
import com.example.demo.model.Product;

public interface ProductService {
    public List<Product> listProducts();
    public List<Product> listProductsCat();
    void createProduct(Product product);
}
