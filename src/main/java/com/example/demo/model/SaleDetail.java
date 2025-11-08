package com.example.demo.model;

public class SaleDetail {
    private Integer id;
    private Integer idVenta;
    private Integer idProduct;
    private Integer cantidad;
    private Double subTotal;

    private Sale sale;
    private Product product;    

    public SaleDetail(){

    }

    public SaleDetail(int id, int idVenta, int idProduct, int cantidad, Double subTotal){
        this.id = id;
        this.idVenta = idVenta;
        this.idProduct = idProduct;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
    }

    public SaleDetail(int id, int idVenta, int idProduct, int cantidad, Double subTotal, Sale sale, Product product){
        this.id = id;
        this.idVenta = idVenta;
        this.idProduct = idProduct;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
        this.sale = sale;
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

    public Integer getIdProduct() {
        return this.idProduct;
    }

    public void setIdProduct(Integer idProduct) {
        this.idProduct = idProduct;
    }

    public Integer getCantidad() {
        return this.cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Double getSubTotal() {
        return this.subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    public Sale getSale() {
        return this.sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
    }

    public Product getProduct() {
        return this.product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
