package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Product;
import com.example.demo.service.CategoryService;
import com.example.demo.service.ProductService;


@Controller
@RequestMapping("/productos")
public class ProductController {
    private final ProductService productService;
    private final CategoryService categoryService;

    public ProductController(ProductService productService, CategoryService categoryService){
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @GetMapping({"", "/"})
    public String redirectToList(){
        return "redirect:/productos/list";
    }

    @RequestMapping("/list")
    public String listProduct(Model model){
        // model.addAttribute("products", productService.listProducts());
        model.addAttribute("products", productService.listProductsCat());
        return "producto/productos";
    }

    @RequestMapping("/create")
    public String showFormProduct(Model model){
        model.addAttribute("product", new Product());
        model.addAttribute("categories", categoryService.list());
        return "producto/productform";
    }

    @PostMapping("/crear")
    public String crearProducto(@ModelAttribute Product product){
        productService.createProduct(product);
        return "redirect:/productos/list";
    }
}