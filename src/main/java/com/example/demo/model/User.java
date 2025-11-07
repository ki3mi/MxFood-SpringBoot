package com.example.demo.model;

public class User {
    private Integer id;
    private String nombre;
    private String password;
    private String email;
    private String telefono;
    private String dni;
    private String estado;

    public User() {
    }

    public User(int id, String nombre, String password, String email, String telefono, String dni, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.password = password;
        this.email = email;
        this.telefono = telefono;
        this.dni = dni;
        this.estado = estado;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getEstado() {
        return this.estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
