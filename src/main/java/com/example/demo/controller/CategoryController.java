package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
