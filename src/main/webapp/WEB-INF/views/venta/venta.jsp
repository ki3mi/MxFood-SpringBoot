<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/venta.css">
<body>
    <header class="header">
        <a href="/menu"><img src="/imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-img"></a>
        <h1>Registro de Ventas</h1>
    </header>

    <main class="container">
        <form action="${pageContext.request.contextPath}/ventas/createSale" method="post">
            <section class="contenedor cliente">
                <h2>Datos del Cliente</h2>
                <label for="nombreCliente">Nombre:</label>
                <input type="text" id="nombreCliente" class="input-text" placeholder="Nombre del cliente" name="nombre">
    
                <label for="telefonoCliente">Teléfono:</label>
                <input type="text" id="telefonoCliente" class="input-text" placeholder="Teléfono (9 dígitos)" name="telefono">
    
                <label for="dniCliente">Documento (DNI):</label>
                <input type="text" id="dniCliente" class="input-text" placeholder="DNI (8 dígitos)" name="dni">
    
                <label for="dniCliente">Dirección:</label>
                <input type="text" id="dniCliente" class="input-text" placeholder="Av. Ejemplo..." name="direccion">
            </section>
    
            <section class="contenedor venta">
                <h2>Tipo de Venta</h2>
                <label><input type="radio" name="tipo" value="Local" checked> En Local</label>
                <!-- <label><input type="radio" name="tipoVenta" value="tienda"> Recoger en Tienda</label> -->
                <label><input type="radio" name="tipo" value="Delivery"> Delivery</label>
    
                
                <input type="hidden" name="userId" value="${sessionScope.userLogged.id}">
                <button class="btn-delivery" type="submit">Continuar</button>
                
            </section>
        </form>
    </main>
</body>