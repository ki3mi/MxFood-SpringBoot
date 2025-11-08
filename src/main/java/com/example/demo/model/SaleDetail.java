package com.example.demo.model;

import java.math.BigDecimal;

public class SaleDetail {
    private Integer id;
    private Integer idVenta;
    private Integer cantidad;
    private BigDecimal subTotal;

    private Product product;    

    public SaleDetail(){

    }

    public SaleDetail(int id, int idVenta, int idProduct, int cantidad, BigDecimal subTotal){
        this.id = id;
        this.idVenta = idVenta;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
    }

    public SaleDetail(int id, int idVenta, int idProduct, int cantidad, BigDecimal subTotal, Sale sale, Product product){
        this.id = id;
        this.idVenta = idVenta;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
        this.product = product;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdVenta() {
        return this.idVenta;
    }

    public void setIdVenta(Integer idVenta) {
        this.idVenta = idVenta;
    }

    public Integer getCantidad() {
        return this.cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public BigDecimal getSubTotal() {
        return this.subTotal;
    }

    public void setSubTotal(BigDecimal subTotal) {
        this.subTotal = subTotal;
    }

    public Product getProduct() {
        return this.product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
