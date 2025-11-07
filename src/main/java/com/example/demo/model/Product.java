package com.example.demo.model;

import java.time.LocalDate;

public class Product {
    private Integer id;
    private String nombre;
    private LocalDate fechaCreacion;
    private Integer idTipoProducto;

    public Product(){

    }
    public Product(int id, String nombre, LocalDate fechaCreacion, int idTipoProducto){
        this.id = id;
        this.nombre = nombre;
        this.fechaCreacion = fechaCreacion;
        this.idTipoProducto = idTipoProducto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public LocalDate getFechCreacion() {
        return fechaCreacion;
    }

    public void setFechCreacion(LocalDate fechCreacion) {
        this.fechaCreacion = fechCreacion;
    }
    public Integer getidTipoProducto() {
        return idTipoProducto;
    }

    public void setidTipoProducto(Integer idTipoProducto) {
        this.idTipoProducto = idTipoProducto;
    }
}
