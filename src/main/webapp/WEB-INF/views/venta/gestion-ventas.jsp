<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/gestion-ventas.css">

<body>
    <div class="container">

        <header class="header">
            <div class="logo-area">
                <a href="/menu">
                    <img src="imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-imagen">
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
                        <th>Ped_ID</th>
                        <th>Ped_Nombre</th>
                        <th>Ped_Tipo</th>
                        <th>Cliente</th>
                        <th>Ped_FechaCompra</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody id="pedidos-list">
                    <tr class="llevar juan-perez" id="pe-llevar-jp1">
                        <td>PE01</td>
                        <td>Tacos al Pastor x4</td>
                        <td>Para llevar</td>
                        <td>Juan Pérez</td>
                        <td>12/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="llevar juan-perez" id="pe-llevar-jp2">
                        <td>PE01</td>
                        <td>Quesadilla de Pollo</td>
                        <td>Para llevar</td>
                        <td>Juan Pérez</td>
                        <td>12/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="tienda ana-garcia" id="pe-tienda-ag1">
                        <td>PE02</td>
                        <td>Enchiladas Suizas</td>
                        <td>Para tienda</td>
                        <td>Ana García</td>
                        <td>13/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="tienda ana-garcia" id="pe-tienda-ag2">
                        <td>PE03</td>
                        <td>Agua Fresca de Jamaica</td>
                        <td>Para tienda</td>
                        <td>Ana García</td>
                        <td>13/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="domicilio carlos-v" id="pe-domicilio-cv1">
                        <td>PE04</td>
                        <td>Burrito de Carnitas</td>
                        <td>Domicilio</td>
                        <td>Carlos V.</td>
                        <td>14/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="llevar laura-m" id="pe-llevar-lm1">
                        <td>PE05</td>
                        <td>Pozole Rojo Grande</td>
                        <td>Para llevar</td>
                        <td>Laura M.</td>
                        <td>19/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="llevar laura-m" id="pe-llevar-lm2">
                        <td>PE05</td>
                        <td>Flan Casero</td>
                        <td>Para llevar</td>
                        <td>Laura M.</td>
                        <td>19/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="domicilio roberto-j" id="pe-domicilio-rj1">
                        <td>PE06</td>
                        <td>Menú Combo 1 (Familiar)</td>
                        <td>Domicilio</td>
                        <td>Roberto J.</td>
                        <td>15/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="tienda mario-s" id="pe-tienda-ms1">
                        <td>PE07</td>
                        <td>Guacamole y Totopos</td>
                        <td>Para tienda</td>
                        <td>Mario S.</td>
                        <td>16/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                    <tr class="tienda mario-s" id="pe-tienda-ms2">
                        <td>PE08</td>
                        <td>Michelada</td>
                        <td>Para tienda</td>
                        <td>Mario S.</td>
                        <td>16/04/2024</td>
                        <td class="eliminar">−</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</body>