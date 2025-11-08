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
    // Listar Categorias
    public List<Category> list(){return categoryDAO.list();}
    // Crear Categoria
    public void createCategory(Category category){categoryDAO.createCategory(category);}
    // Obtener Categoria por Id
    public Category getCategoryById(int id){return categoryDAO.getCategoryById(id);}
    // Actualizar Categoria
    public void updateCategory(Category category){categoryDAO.updateCategory(category);}
    // Desactivar Categoria
    public void deactivateCategory(int id){categoryDAO.deactivateCategory(id);}
}
