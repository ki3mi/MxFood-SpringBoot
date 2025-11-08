package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Product;

public interface ProductDAO {
    public List<Product> listProducts();
    public List<Product> listProductsCat();
    public int createProduct(Product product);
}
