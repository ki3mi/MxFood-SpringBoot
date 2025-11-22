<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/producto-form.css">

<body>
    <div class="container">
        <section class="form-section">
            <div class="logo">
                <a href="/menu">
                    <img src="${pageContext.request.contextPath}/imag/logo.png" alt="img" class="img">
                </a>
                <a href="/ventas"><button type="reset" class="ghost">Volver</button></a>
            </div>
            <form class="card form" action="" method="get">
                <h2>Detalle de venta N° ${sale.id}</h2>
                <input type="hidden" name="id" value="">
                <label>
                    Detalles del cliente:
                </label>
                <label>
                    Nombre: 
                    <span style="font-weight: normal;">${sale.nombre}</span>
                </label>
                <label>
                    Teléfono: 
                    <span style="font-weight: normal;">${sale.telefono}</span>
                </label>
                <label>
                    DNI: 
                    <span style="font-weight: normal;">${sale.dni}</span>
                </label>
                <label>
                    Dirección: 
                    <span style="font-weight: normal;">${sale.direccion}</span>
                </label>
                <label>
                    Detalles de venta: 
                </label>

                <label>
                    Tipo de venta: 
                    <span style="font-weight: normal;">${sale.tipo}</span>
                </label>
                <label>
                    Fecha: 
                    <span style="font-weight: normal;">${sale.fecha}</span>
                </label>
                <label>
                    Estado: 
                    <span style="font-weight: normal;">${sale.estado}</span>
                </label>
                <label>
                    Total: 
                    <span style="font-weight: normal;">S/. ${sale.total}</span>
                </label>

                <table id="categoriesTable" aria-label="Tabla de categorías">
                    <thead>
                    <tr>
                        <th style="width:8%">ID</th>
                        <th style="width:22%">Cantidad</th>
                        <th style="width:22%;">Subtotal</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Filas de ejemplo -->
                    <c:forEach items="${sale.details}" var="detail">           
                        <tr>
                            <td>${detail.id}</td>
                            <td>${detail.cantidad}</td>
                            <td>${detail.subTotal}</td>
                        </tr>            
                    </c:forEach>
                    </tbody>
                </table>

                <!-- <input type="number" step="0.01" name="precio" value="" required> -->
                <div class="card-footer">
                    <button type="submit" class="btn">Guardar</button>
                </div>
            </form>
        </section>
    </div>
</body>