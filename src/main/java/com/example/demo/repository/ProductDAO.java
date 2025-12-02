package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Product;

public interface ProductDAO {
    public List<Product> listProducts();
    public List<Product> listProductsCat();
    public int createProduct(Product product);
    public Product getProductById(int id);
    public Product getProductByIdTest(int id);
    public int updateProduct(Product product);
    public int deactivateProduct(int id);
    public List<Product> listQueryProducts(String query);
}
