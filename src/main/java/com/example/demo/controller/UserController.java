package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.User;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService){
        this.userService = userService;
    }

    @RequestMapping({"", "/"})
    public String redirectToList(){
        return "redirect:/user/list";
    }

    @RequestMapping("/list")
    public String listUser(Model model){
        model.addAttribute("users", userService.listUsers());
        return "cuenta/users";
    }

    // Mostrar formulario de creacion
    @RequestMapping("/create")
    public String showFormUser(Model model){
        model.addAttribute("user", new User());
        return "cuenta/userform";
    }

    // Procesar solicitud de creacion
    @PostMapping("/crear")
    public String createUser(@ModelAttribute User user){
        userService.createUser(user);
        return "redirect:/user/list";
    }

    // Mostrar formulario de edicion
    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable int id, Model model){
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "cuenta/edituser";
    }

    // Procesar solicitud de actualizacion
    @PostMapping("/update")
    public String updateUser(@ModelAttribute User user){
        userService.updateUser(user);
        return "redirect:/user/list";
    }

    // Desactivar categoria
    @PostMapping("/deactivate/{id}")
    public String deactivateUser(@PathVariable int id){
        userService.deactivateUser(id);
        return "redirect:/user/list";
    }
}
