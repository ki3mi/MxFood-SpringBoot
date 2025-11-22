package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.SaleService;

@Controller
@RequestMapping("/ventas")
public class SaleController {
    private final SaleService saleService;

    public SaleController(SaleService saleService){
        this.saleService = saleService;
    }
    // Redirigir rutas a la lista de ventas
    @GetMapping({"", "/"})
    public String redirect(){
        return "redirect:/ventas/listar";
    }

    // Listar Ventas
    @GetMapping("/listar")
    public String listSales(Model model){
        model.addAttribute("sales", saleService.list());
        return "venta/gestion-ventas";
    }

    // Ver detalle de venta
    @GetMapping("/detalle/{id}")
    public String saleDeatail(@PathVariable int id, Model model){
        model.addAttribute("sale", saleService.getById(id));
        return "venta/detalle-venta";
    }
}
