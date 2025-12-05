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
            <h2>Buscar:</h2>
            <div class="filtros-contenido">
                <form class="filtros-contenido" action="${pageContext.request.contextPath}/ventas/listar" method="get">
                    <!-- Cliente -->
                    <div class="filtro-item">
                        <label for="cliente">Cliente</label>
                        <input type="text" name="cliente" id="cliente" class="input-filtro" placeholder="Nombre de Cliente">
                    </div>

                    <!-- Botón Buscar -->
                    <div class="filtro-item boton-container">
                        <button type="submit" class="boton-buscar">Buscar</button>
                    </div>
                </form>
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
                                    <!-- <button class="boton-buscar" style="background-color: rgb(113, 79, 207);" type="submit">Desactivar</button> -->
                                </form>
                                <form action="${pageContext.request.contextPath}/ventas/boleta/${sale.id}">
                                    <input type="hidden" name="isList" value="true">
                                    <button class="boton-buscar" type="submit">Detalles</button>
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