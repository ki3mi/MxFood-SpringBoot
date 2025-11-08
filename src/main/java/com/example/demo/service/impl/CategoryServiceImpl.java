package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Category;
import com.example.demo.repository.CategoryDAO;
import com.example.demo.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
    private final CategoryDAO categoryDAO;

    public CategoryServiceImpl(CategoryDAO categoryDAO){
        this.categoryDAO = categoryDAO;
    }

    public List<Category> list(){
        return categoryDAO.list();
    }
}
