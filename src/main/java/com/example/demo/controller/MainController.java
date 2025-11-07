package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String home(){
        return "redirect:/login";
    }
    // @GetMapping("/login")
    // public String login(){
    //     return "login";
    // }
    @GetMapping("/menu")
    public String menu(){
        return "menu";
    }
}
