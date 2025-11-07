package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ProductService;


@Controller
@RequestMapping("/productos")
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService){
        this.productService = productService;
    }

    @GetMapping({"", "/"})
    public String redirectToList(){
        return "redirect:/productos/list";
    }

    @RequestMapping("/list")
    public String listProduct(Model model){
        model.addAttribute("pablo", productService.listProducts());
        return "producto/productos";
    }
    @RequestMapping("/create")
    public String showFormProduct(){
        return "producto/productform";
    }

}