package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Sale;
import com.example.demo.model.SaleDetail;
import com.example.demo.service.ProductService;
import com.example.demo.service.SaleDetailService;
import com.example.demo.service.SaleService;

@Controller
@RequestMapping("/ventas")
public class SaleController {
    private final SaleService saleService;
    private final ProductService productService;
    private final SaleDetailService saleDetailService;

    public SaleController(SaleService saleService, ProductService productService, SaleDetailService saleDetailService){
        this.saleService = saleService;
        this.productService = productService;
        this.saleDetailService = saleDetailService;
    }
    // Redirigir rutas a la lista de ventas
    @GetMapping({"", "/"})
    public String redirect(){
        return "redirect:/ventas/listar";
    }

    
    // Listar Ventas
    @GetMapping("/listar")
    public String listSales(Model model){
        model.addAttribute("sales", saleService.list());
        return "venta/gestion-ventas";
    }
    
    // Registrar venta
    @RequestMapping("/registrar")
    public String venta(Model model){
        model.addAttribute("sale", new Sale());
        return "venta/venta";
    }

    // Ver detalle de venta
    @GetMapping("/detalle/{id}")
    public String saleDetail(@PathVariable int id, Model model){
        model.addAttribute("sale", saleService.getById(id));
        return "venta/detalle-venta";
    }
    
    // Procesar Solicitud para crear una venta
    @PostMapping("/createSale")
    public String createSale(@ModelAttribute Sale sale){
        int id = saleService.createSale(sale);
        return "redirect:/ventas/agregardetalle/" + id;
    }

    // Agregar detalles de venta
    @RequestMapping("/agregardetalle/{id}")
    public String addDetails(@PathVariable int id,
                    @RequestParam(required = false) String query,
                    Model model){
        model.addAttribute("products", productService.listQueryProducts(query));
        model.addAttribute("sale", saleService.getById(id));
        model.addAttribute("details", saleDetailService.list(id));
        model.addAttribute("saleDetail", new SaleDetail());
        return "venta/agregarDetalles";
    }

    // Procesar solicitud de creación para un detalle de venta
    @PostMapping("/agregardetalle")
    public String addNewDetail(@ModelAttribute SaleDetail saleDetail){
        saleDetailService.createDetail(saleDetail);
        return "redirect:/ventas/agregardetalle/" + saleDetail.getIdVenta();
    }

    // Cerrar venta
    @PostMapping("/closeSale/{id}")
    public String closeSale(@PathVariable int id){
        saleService.closeSale(id);
        return "redirect:/ventas/boleta/"+id+"?isList=false";
    }

    // Mostrar boleta
    @GetMapping("/boleta/{id}")
    public String showTicket(@PathVariable int id,
                    @RequestParam(required = false) Boolean isList,
                    Model model){
        model.addAttribute("sale", saleService.getById(id));
        model.addAttribute("isList", isList);
        return "venta/boleta";
    }
}
