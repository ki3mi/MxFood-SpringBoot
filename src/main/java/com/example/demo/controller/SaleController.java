package com.example.demo.controller;

import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Sale;
import com.example.demo.model.SaleDetail;
import com.example.demo.model.User;
import com.example.demo.service.SaleService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/ventas")
public class SaleController {
    private final SaleService saleService;

    public SaleController(SaleService saleService){
        this.saleService = saleService;
    }

    @PostMapping("/registrar")
    public String registerSale(@ModelAttribute Sale sale, HttpSession session){
        User user = (User) session.getAttribute("userLogged");
        sale.setUser(user);

        BigDecimal total = sale.getDetails().stream()
            .map(SaleDetail :: getSubTotal)
            .reduce(BigDecimal.ZERO, BigDecimal::add);
                
        sale.setTotal(total);

        saleService.registerSale(sale);
        return "redirect:/ventas";
    }
}
