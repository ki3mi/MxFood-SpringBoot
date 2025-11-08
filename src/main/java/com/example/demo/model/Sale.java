package com.example.demo.model;

import java.time.LocalDate;

public class Sale {
    private Integer id;
    private String tipo;
    private LocalDate fecha;
    private String estado;
    private Double total;
    private Integer userId;

    private User user;

    
    public Sale(){
        
    }
    public Sale(int id, String tipo, LocalDate fecha, String estado, Double total, int userId){
        this.id = id;
        this.tipo = tipo;
        this.fecha = fecha;
        this.estado = estado;
        this.total = total;
        this.userId = userId;
    }
    
    public Sale(int id, String tipo, LocalDate fecha, String estado, Double total, int userId, User user){
        this.id = id;
        this.tipo = tipo;
        this.fecha = fecha;
        this.estado = estado;
        this.total = total;
        this.userId = userId;
        this.user = user;
    }
    
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTipo() {
        return this.tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public LocalDate getFecha() {
        return this.fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return this.estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Double getTotal() {
        return this.total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
}

