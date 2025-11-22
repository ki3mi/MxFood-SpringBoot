<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/gestion-ventas.css">

<body>
    <div class="container">

        <header class="header">
            <div class="logo-area">
                <a href="/menu">
                    <img src="${pageContext.request.contextPath}/imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-imagen">
                </a>
            </div>
            <div class="titulo-gestion">Gestión Ventas</div>
        </header>

        <!-- SECCIÓN DE FILTROS -->
        <div class="filtro-seccion">
            <h2>Filtrar Pedidos:</h2>
            <div class="filtros-contenido">
                <!-- Fecha -->
                <div class="filtro-item">
                    <label for="fechaDesde">Fecha desde:</label>
                    <input type="date" id="fechaDesde" class="input-filtro">
                </div>

                <!-- Cliente -->
                <div class="filtro-item">
                    <label for="cliente">Cliente:</label>
                    <input type="text" id="cliente" class="input-filtro" placeholder="Nombre de Cliente">
                </div>

                <!-- Tipo de Pedido -->
                <div class="filtro-item">
                    <label for="tipoPedido">Tipo de Pedido:</label>
                    <select id="tipoPedido" class="input-filtro">
                        <option value="">Todos</option>
                        <option value="llevar">Para llevar</option>
                        <option value="tienda">Para tienda</option>
                        <option value="domicilio">Domicilio</option>
                    </select>
                </div>

                <!-- Botón Buscar -->
                <div class="filtro-item boton-container">
                    <button class="boton-buscar">Buscar</button>
                </div>
            </div>
        </div>

        <!-- TABLA DE PEDIDOS -->
        <div class="tabla-contenedor">
            <h3 class="tabla-titulo">PEDIDO</h3>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>DNI</th>
                        <th>Tipo</th>
                        <th>Fecha</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody id="pedidos-list">
                    <c:forEach items="${sales}" var="sale">
                        <tr class="llevar juan-perez" id="pe-llevar-jp1">
                            <td>${sale.id}</td>
                            <td>${sale.nombre}</td>
                            <td>${sale.dni}</td>
                            <td>${sale.tipo}</td>
                            <td>${sale.fecha}</td>
                            <td class="eliminar">
                                <form action="">
                                    <button type="submit">Desactivar</button>
                                </form>
                                <form action="${pageContext.request.contextPath}/ventas/detalle/${sale.id}">
                                    <button type="submit">Detalles</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</body>