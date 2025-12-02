package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Product;
import com.example.demo.model.Sale;
import com.example.demo.model.SaleDetail;
import com.example.demo.repository.ProductDAO;
import com.example.demo.repository.SaleDAO;
import com.example.demo.repository.SaleDetailDAO;
import com.example.demo.service.SaleDetailService;
import com.example.demo.service.SaleService;

@Service
public class SaleServiceImpl implements SaleService{
    private final SaleDAO saleDAO;
    private final SaleDetailDAO saleDetailDAO;
    private final SaleDetailService saleDetailService;

    public SaleServiceImpl(SaleDAO saleDAO, SaleDetailDAO saleDetailDAO, SaleDetailService saleDetailService){
        this.saleDAO = saleDAO;
        this.saleDetailDAO = saleDetailDAO;
        this.saleDetailService = saleDetailService;
    }
    
    // Listar los productos
    public List<Sale> list(){
        return saleDAO.list();
    }

    public List<Sale> listPending(){
        return saleDAO.listPending();
    }
    public Sale getById(int id){
        Sale sale = saleDAO.getById(id);
        List<SaleDetail> saleDetails = saleDetailService.list(id);
        sale.setDetails(saleDetails);
        return sale;
    }

    public int createSale(Sale sale){
        sale.setEstado("Pendiente");
        sale.setTotal(0.0);
        return saleDAO.createSale(sale);
    }

    // Cerrar venta
    public void closeSale(int id){
        List<SaleDetail> lisDetails = saleDetailDAO.list(id);
        Double total = 0.0;
        String estado = "Pendiente";
        for (SaleDetail saleDetail : lisDetails) {
            total = total + saleDetail.getSubTotal();
        }        
        saleDAO.closeSale(id, total, estado);
    }

    // Cambiar ESTADO hasta completar el pedido
    public void chageEstate(int id){
        Sale sale = saleDAO.getById(id);
        String estado = "Pendiente";
        if (sale.getTipo().equals("Delivery") && sale.getEstado().equals("Pendiente")) {
            estado = "En Camino";
        }else{
            estado = "Completada";
        }
        saleDAO.closeSale(id, sale.getTotal(), estado);
    }    
}
