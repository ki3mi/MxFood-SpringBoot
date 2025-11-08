package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Category;
import com.example.demo.service.CategoryService;

@Controller
@RequestMapping("/categorias")
public class CategoryController {
    private final CategoryService categoryService;
    public CategoryController(CategoryService categoryService){
        this.categoryService = categoryService;
    }

    @RequestMapping({"", "/"})
    public String redirectToList(){
        return "redirect:/categorias/list";
    }

    @RequestMapping("/list")
    public String listCategory(Model model){
        model.addAttribute("categories", categoryService.list());
        return "categoria/categorias";
    }

    // Mostrar formulario de creacion
    @RequestMapping("/create")
    public String showFormCategory(Model model){
        model.addAttribute("category", new Category());
        return "categoria/formulario";
    }

    // Procesar solicitud de creacion
    @PostMapping("/crear")
    public String createCategory(@ModelAttribute Category category){
        categoryService.createCategory(category);
        return "redirect:/categorias/list";
    }

    // Mostrar formulario de edicion
    @GetMapping("/edit/{id}")
    public String editCategory(@PathVariable int id, Model model){
        Category category = categoryService.getCategoryById(id);
        model.addAttribute("category", category);
        return "categoria/editcategoria";
    }

    // Procesar solicitud de actulizacion
    @PostMapping("/update")
    public String updateCategory(@ModelAttribute Category category){
        categoryService.updateCategory(category);
        return "redirect:/categorias/list";
    }

    // Desactivar categoria
    @PostMapping("/deactivate/{id}")
    public String deactivateCategory(@PathVariable int id){
        categoryService.deactivateCategory(id);
        return "redirect:/categorias/list";
    }
}
