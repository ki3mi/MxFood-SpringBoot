package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MiControlador {

    @GetMapping("/venta")
    public String venta(){
        return "venta/venta";
    }

    @GetMapping("/catalogo")
    public String catalogo(){
        return "producto/catalogo";
    }

    @GetMapping("/publicidad")
    public String publicidad(){
        return "publicidad/publicidad";
    }

    @GetMapping("/metricas")
    public String metricas(){
        return "metricas/metricas";
    }

    @GetMapping("/contacto")
    public String contacto(){
        return "contacto/contacto";
    }

    @GetMapping("/gestion-ventas")
    public String gestionVentas(){
        return "venta/gestion-ventas";
    }

    @GetMapping("/cuenta")
    public String cuenta(){
        return "cuenta/cuenta";
    }
}
