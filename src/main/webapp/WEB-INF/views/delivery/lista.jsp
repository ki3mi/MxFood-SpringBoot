<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/categorias.css">

<body>

    <div class="container">
        <header>
            <div class="brand">
                <div class="logo">
                    <a href="/menu">
                        <img src="../imag/logo.png" alt="img" class="img">
                    </a>
                </div>
                <div>
                    <div class="main-title">
                        <h2>Gestión de Delivery y Pendientes</h2>
                    </div>
                </div>
            </div>
        </header>
        <main class="main">
            <!-- <div class="toolbar">
        <a href="/categorias/create" class="btn-primary">+ Nueva categoría</a>
      </div> -->
            <table id="categoriesTable" aria-label="Tabla de categorías">
                <thead>
                    <tr>
                        <th style="width:8%">ID</th>
                        <th style="width:10%">Tipo</th>
                        <th style="width:30%">Nombre</th>
                        <th style="width:10%;">DNI</th>
                        <th style="width:20%;">Telefono</th>
                        <th style="width:10%;">Estado</th>
                        <th style="width:20%">Opciones</th>
                    </tr>
                </thead>
                <tbody>

                    <!-- Filas de ejemplo -->
                    <c:forEach items="${sales}" var="sale">
                        <tr>
                            <td>${sale.id}</td>
                            <td>${sale.tipo}</td>
                            <td>${sale.nombre}</td>
                            <td>${sale.dni}</td>
                            <td>${sale.telefono}</td>
                            <td>${sale.estado}</td>
                            <td>
                                <div class="actions">
                                    <!-- Boton de eliminar -->
                                    <form
                                        action="${pageContext.request.contextPath}/pendientes/cambiarEstado/${sale.id}"
                                        method="post">
                                        <button type="submit"
                                            onclick="return confirm('¿Deseas cabiar el estado del pedido?')"
                                            class="btn-delete">Continuar</button>
                                    </form>
                                    <!-- Boton de editar -->
                                    <form action="${pageContext.request.contextPath}/pendientes/ticket/${sale.id}">
                                        <button type="submit" class="btn-edit">Detalles</button>
                                    </form>

                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:if test="${empty sales}">
                <div style="
                width: 100%;
                display: flex;
                justify-content: center;
                padding-top: 20px;
                padding-bottom: 20px;
                background-color: white;
                border-radius: 5px;">
                    No Hay pendientes!!
                </div>
            </c:if>
        </main>
    </div>
</body>