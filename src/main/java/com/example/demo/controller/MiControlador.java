package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MiControlador {

    @GetMapping("/")
    public String index(){
        return "test";
    }

    @GetMapping("/hola")
    public String holaMundo(Model model) {
        System.out.println("test");
        model.addAttribute("mensaje", "¡Hola desde Spring Boot!");
        return "vista";
    }

    @GetMapping("/login")
    public String login(){
        return "mxfood/login";
    }

    @GetMapping("/menu")
    public String menu(){
        return "mxfood/menu";
    }

    @GetMapping("/venta")
    public String venta(){
        return "mxfood/venta";
    }

    @GetMapping("/catalogo")
    public String catalogo(){
        return "mxfood/catalogo";
    }

    @GetMapping("/publicidad")
    public String publicidad(){
        return "mxfood/publicidad";
    }

    @GetMapping("/metricas")
    public String metricas(){
        return "mxfood/metricas";
    }

    @GetMapping("/productos")
    public String productos(){
        return "mxfood/productos";
    }

    @GetMapping("/contacto")
    public String contacto(){
        return "mxfood/contacto";
    }

    @GetMapping("/gestion-ventas")
    public String gestionVentas(){
        return "mxfood/gestion-ventas";
    }

    @GetMapping("/cuenta")
    public String cuenta(){
        return "mxfood/cuenta";
    }

    @GetMapping("/categorias")
    public String categorias(){
        return "mxfood/categorias";
    }

    @GetMapping("/categorias/crear")
    public String categoriaCrear(){
        return "mxfood/categorias/formulario";
    }

    @GetMapping("/categorias/editar")
    public String categoriaeditar(){
        return "mxfood/categorias/formulario";
    }
}
