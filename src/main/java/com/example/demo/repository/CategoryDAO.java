package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryDAO {
    public List<Category> list();
    public int createCategory(Category category);
    public Category getCategoryById(int id);
    public int updateCategory(Category category);
    public int deactivateCategory(int id);
}
