package com.example.demo.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public class Sale {
    private Integer id;
    private String nombre;
    private String telefono;
    private String dni;  
    private String direccion;
    private String tipo;
    private LocalDate fecha;
    private String estado;
    private BigDecimal total;
    private Integer userId;

    private List<SaleDetail> details;

    public Sale(){
        
    }
    public Sale(int id, String nombre, String telefono, String dni, String direccion, String tipo, LocalDate fecha, String estado, BigDecimal total, int userId){
        this.id = id;
        this.nombre = nombre;
        this.telefono = telefono;
        this.dni = dni;
        this.direccion = direccion;
        this.tipo = tipo;
        this.fecha = fecha;
        this.estado = estado;
        this.total = total;
        this.userId = userId;
    }
    
    public Sale(int id, String nombre, String telefono, String dni, String direccion, String tipo, LocalDate fecha, String estado, BigDecimal total, int userId, List<SaleDetail> saleDetails){
        this.id = id;
        this.nombre = nombre;
        this.telefono = telefono;
        this.dni = dni;
        this.direccion = direccion;
        this.tipo = tipo;
        this.fecha = fecha;
        this.estado = estado;
        this.total = total;
        this.userId = userId;
        this.details = saleDetails;
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

    public BigDecimal getTotal() {
        return this.total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<SaleDetail> getDetails() {
        return this.details;
    }

    public void setDetails(List<SaleDetail> details) {
        this.details = details;
    }
    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return this.telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDni() {
        return this.dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
    
    public String getDireccion() {
        return this.direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
}

