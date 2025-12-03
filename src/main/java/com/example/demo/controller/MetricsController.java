package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.MetricsService;

@Controller
@RequestMapping("/metricas")
public class MetricsController {
    private final MetricsService metricsService;

    public MetricsController(MetricsService metricsService){
        this.metricsService = metricsService;
    }

    @GetMapping({"/", ""})
    public String list(Model model){
        model.addAttribute("mesSales", metricsService.getTotalSales());
        model.addAttribute("totalSixMonth", metricsService.getTotalSixMonth());
        model.addAttribute("categorySales", metricsService.getTotalCategory());
        model.addAttribute("totalSixCategory", metricsService.getTotalSixCategory());
        model.addAttribute("productSales", metricsService.getTotalProducts());
        model.addAttribute("totalSixProduct", metricsService.getTotalSixProducts());
        return "metricas/metricas";
    }
}
