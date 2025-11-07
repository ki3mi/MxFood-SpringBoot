<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/mxmenu.css">

<body>
    <div class="container">
        <img src="imag/MexicanHosue.png" alt="Mexican House" class="logo">

        <div class="subtitle-container">
            <h2 class="subtitle">Sistema de Ventas</h2>
        </div>

        <!-- Menú principal -->
        <div class="menu">

            <!-- CRUD Registro de Ventas -->
            <a href="/venta" class="card">
                <img src="imag/RegV.png" alt="CRUD Registro de Ventas">
                <p> Registro de Ventas</p>
            </a>

            <!-- CRUD Catálogo de Productos -->
            <a href="/productos" class="card">
                <img src="imag/CrudCatalogo.png" alt="CRUD Catálogo de Productos">
                <p>CRUD Catálogo de Productos</p>
            </a>

            <!-- Publicidad -->
            <a href="/publicidad" class="card">
                <img src="imag/Pub.png" alt="Publicidad">
                <p>Publicidad</p>
            </a>

            <!-- Métricas -->
            <a href="/metricas" class="card">
                <img src="imag/Stats.png" alt="Métricas">
                <p>Métricas</p>
            </a>

            <!-- Catálogo de Productos (visual) -->
            <a href="/catalogo" class="card">
                <img src="imag/CatPro.png" alt="Catálogo de Productos">
                <p>Catálogo de Productos</p>
            </a>

            <!-- Contacto -->
            <a href="/contacto" class="card">
                <img src="imag/Cont.png" alt="Contacto">
                <p>Contacto</p>
            </a>

            <!-- Gestión de Ventas -->
            <a href="/gestion-ventas" class="card">
                <img src="imag/Gestion.png" alt="Gestión de Ventas">
                <p>Gestión de Ventas</p>
            </a>

            <!-- Información de Cuenta -->
            <a href="/cuenta" class="card">
                <img src="imag/GestU.png" alt="Información de Cuenta">
                <p>Información de Cuenta</p>
            </a>

        </div>
    </div>
</body>