<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/catalogo.css">
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Outfit:wght@100..900&display=swap"
        rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap" rel="stylesheet">

<body>
    <div class="contenedor-principal">
        <header class="encabezado">
            <a href="/menu"><img src="imag/MexicanHosue.png" alt="Mexican House Logo" class="logo-marca"></a>
            <div class="titulo-catalogo">
                <h1>Catálogo de Productos</h1>
            </div>
        </header>

        <nav class="navegacion-categorias">
            <button class="boton-categoria">BOTANAS</button>
            <button class="boton-categoria">TACOS</button>
            <button class="boton-categoria">PLATOS</button>
            <button class="boton-categoria">BEBIDAS</button>
        </nav>

        <main class="grid-productos">

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Guacamole.jpg" alt="Guacamole con totopos">
                    <div class="etiqueta-precio">s/10.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Guacamole con totopos</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Tacos2.avif" alt="Tacos al pastor">
                    <div class="etiqueta-precio">s/17.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Tacos al pastor</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Enchilada.png" alt="Enchiladas verdes">
                    <div class="etiqueta-precio">s/21.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Enchiladas verdes</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Horchata.jpg" alt="Agua de Horchata">
                    <div class="etiqueta-precio">s/15.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Agua de Horchata</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/nachos.webp" alt="Nachos con queso y chile">
                    <div class="etiqueta-precio">s/14.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Nachos Supreme</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Tacos-Carnita.jpg" alt="Tacos de carnitas">
                    <div class="etiqueta-precio">s/18.50</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Tacos de Carnitas</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Pollo.jpg" alt="Pollo en mole poblano">
                    <div class="etiqueta-precio">s/25.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Pollo con Mole Poblano</div>
                </div>
            </div>

            <div class="tarjeta-producto">
                <div class="contenedor-imagen-producto">
                    <img src="imag/Jamaica.jpg" alt="Agua fresca de Jamaica">
                    <div class="etiqueta-precio">s/8.00</div>
                </div>
                <div class="info-producto">
                    <div class="nombre-producto">Agua Fresca de Jamaica</div>
                </div>
            </div>

        </main>
    </div>
</body>