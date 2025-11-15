package com.example.demo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.SaleDetailService;

@Controller
@RequestMapping("/detalle-ventas")
public class SaleDetailController {
    private final SaleDetailService saleDetailService;

    public SaleDetailController(SaleDetailService saleDetailService){
        this.saleDetailService = saleDetailService;
    }

    @GetMapping("/list")
    public String listSaleDetails(Model model){        
        model.addAttribute("saledetails", saleDetailService.listSaleDetails());
        return "ventas/details";
    }
}
