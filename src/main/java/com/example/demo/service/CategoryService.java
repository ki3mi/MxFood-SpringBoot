package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryService {
    public List<Category> list();
    void createCategory(Category category);
    public Category getCategoryById(int id);
    void updateCategory(Category category);
    void deactivateCategory(int id);
}
