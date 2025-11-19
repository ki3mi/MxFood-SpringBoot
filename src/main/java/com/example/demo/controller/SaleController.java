package com.example.demo.controller;

import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.SaleService;

@Controller
@RequestMapping("/ventas")
public class SaleController {
    private final SaleService saleService;

    public SaleController(SaleService saleService){
        this.saleService = saleService;
    }

    // Listar Ventas
    @GetMapping("/listar")
    public String listSales(Model model){
        model.addAttribute("sales", saleService.list());
        return "venta/gestion-ventas";
    }
}
