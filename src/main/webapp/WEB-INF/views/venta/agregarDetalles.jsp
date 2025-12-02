<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/venta.css">

<body>
    <header class="header">
        <img src="${pageContext.request.contextPath}/imag/MexicanHosue.png" alt="Logo Mexican House"
                class="logo-img">
        <h1>Registro de Ventas</h1>
    </header>

    <main class="container">
        <!-- AGREGAR PRODUCTOS -->
        <section class="contenedor productos">
            <h2>Productos</h2>
            <!-- Barra de busqueda -->
            <div class="searchBar">
                <form action="${pageContext.request.contextPath}/ventas/agregardetalle/${sale.id}">
                    <input type="text" class="input-text" placeholder="Buscar nombre..." name="query">
                    <button type="submit" class="btn-search">Buscar</button>
                </form>
            </div>
            <ul class="productos-lista" id="productosSeleccionados">
                <c:if test="${empty products}">
                    <li style="font-weight: bold;">No hay coincidencias</li>
                </c:if>
                <c:forEach items="${products}" var="product">
                    <div>
                        <li>${product.nombre}: S/. ${product.precio}</li>
                        <form action="${pageContext.request.contextPath}/ventas/agregardetalle" method="post">
                            <input type="hidden" name="idVenta" value="${sale.id}">
                            <input type="hidden" name="idProducto" value="${product.id}">
                            <input type="number" name="cantidad" value="1">
                            <input type="hidden" name="subTotal" value="0">
                            <button type="submit">Agregar</button>
                        </form>
                    </div>
                </c:forEach>
            </ul>
            <h3>Productos Seleccionados</h3>
            <ul class="productos-lista" id="productosSeleccionados">
                <c:forEach items="${details}" var="detail">
                    <li>${detail.product.nombre}: Sub-Tota: S/. ${detail.subTotal}</li>
                </c:forEach>
            </ul>
        </section>
        <!-- DATOS DEL CLIENTE -->
        <section class="contenedor cliente">
            <h2>Datos del Cliente</h2>
            <input type="hidden" name="id" value="">
            <label for="nombreCliente">Nombre: ${sale.nombre}</label>

            <label for="telefonoCliente">Teléfono: ${sale.telefono}</label>

            <label for="dniCliente">Documento (DNI): ${sale.dni}</label>

            <label for="dniCliente">Dirección: Av. ${sale.direccion}</label>
        </section>

        <section class="contenedor venta">
            <form action="${pageContext.request.contextPath}/ventas/closeSale/${sale.id}" method="post">
                <button class="btn-delivery" type="submit">Continuar</button>
            </form>
        </section>
    </main>
</body>