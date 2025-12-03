package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.SaleService;

@Controller
@RequestMapping("/pendientes")
public class DeliveryController {

    private final SaleService saleService;

    public DeliveryController(SaleService saleService){
        this.saleService = saleService;
    }
    
    // Listar las ventas pendientes (Delivery o Preparando)
    @GetMapping({"/", ""})
    public String pending(Model model){
        model.addAttribute("sales",saleService.listPending());
        return "delivery/lista";
    }

    @PostMapping("/cambiarEstado/{id}")
    public String chageEstate(@PathVariable int id){
        saleService.chageEstate(id);
        return "redirect:/pendientes";
    }

    @GetMapping("/ticket/{id}")
    public String showTicket(@PathVariable int id, Model model){
        model.addAttribute("sale", saleService.getById(id));
        return "delivery/ticket";
    }
}
