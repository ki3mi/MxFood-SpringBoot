package com.example.demo.model;

public class Metrics {
    private Double subTotal;
    private String etiqueta;
    private Integer porcentual;
    private String totalFormat;
 
    public Metrics(){}

    public Metrics(Double subTotal, String etiqueta){
        this.subTotal = subTotal;
        this.etiqueta = etiqueta;
    }
    
    public Double getSubTotal() {
        return this.subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    public String getEtiqueta() {
        return this.etiqueta;
    }

    public void setEtiqueta(String etiqueta) {
        this.etiqueta = etiqueta;
    }

    public Integer getPorcentual() {
        return this.porcentual;
    }

    public void setPorcentual(Integer porcentual) {
        this.porcentual = porcentual;
    }
    public String getTotalFormat() {
        return this.totalFormat;
    }

    public void setTotalFormat(String totalFormat) {
        this.totalFormat = totalFormat;
    }
}
