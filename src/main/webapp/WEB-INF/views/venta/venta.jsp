<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/venta.css">
<body>
    <header class="header">
        <a href="/menu"><img src="imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-img"></a>
        <h1>Registro de Ventas</h1>
    </header>

    <main class="container">

        <section class="contenedor cliente">
            <h2>Datos del Cliente</h2>
            <label for="nombreCliente">Nombre:</label>
            <input type="text" id="nombreCliente" class="input-text" placeholder="Nombre del cliente">

            <label for="telefonoCliente">Teléfono:</label>
            <input type="text" id="telefonoCliente" class="input-text" placeholder="Teléfono (9 dígitos)">

            <label for="dniCliente">Documento (DNI):</label>
            <input type="text" id="dniCliente" class="input-text" placeholder="DNI (8 dígitos)">
        </section>

        <section class="contenedor productos">
            <h2>Productos</h2>
            <select id="productos" class="input-text">
                <option>Tacos al Pastor</option>
                <option>Quesadilla de Pollo</option>
                <option>Enchiladas Suizas</option>
                <option>Agua Fresca de Jamaica</option>
                <option>Burrito de Carnitas</option>
                <option>Pozole Rojo Grande</option>
                <option>Flan Casero</option>
                <option>Menú Combo 1 (Familiar)</option>
                <option>Guacamole y Totopos</option>
                <option>Michelada</option>
            </select>

            <h3>Productos Seleccionados</h3>
            <ul class="productos-lista" id="productosSeleccionados"></ul>
        </section>

        <section class="contenedor venta">
            <h2>Tipo de Venta</h2>
            <label><input type="radio" name="tipoVenta" value="local" checked> En Local</label>
            <label><input type="radio" name="tipoVenta" value="tienda"> Recoger en Tienda</label>
            <label><input type="radio" name="tipoVenta" value="delivery"> Delivery</label>

            <h2>Método de Pago</h2>
            <label><input type="radio" name="pago" value="efectivo" checked> Efectivo</label>
            <label><input type="radio" name="pago" value="tarjeta"> Tarjeta de Débito</label>
            <label><input type="radio" name="pago" value="yape"> Yape/Plin</label>

            <a href="#modalBoleta" class="btn-completar">Completar Compra</a>
            <a href="delivery.html" class="btn-delivery">Ir a Delivery</a>
        </section>

    </main>

    <div id="modalBoleta" class="modal">
        <div class="modal-contenido">
            <a href="#" class="cerrar-modal">&times;</a>
            <h2>Boleta de Compra</h2>

            <div id="detalleBoleta" class="boleta-detalle">
                <div class="boleta-header">
                    <p><strong>Razón Social:</strong> Mexican House S.A.C.</p>
                    <p><strong>RUC:</strong> 20567891234</p>
                    <p><strong>Fecha/Hora:</strong> 20/04/2025 19:45</p>
                    <hr>
                </div>

                <div class="boleta-cliente">
                    <p><strong>Cliente:</strong> Juan Cueva </p>
                    <p><strong>DNI:</strong> 12345678 </p>
                    <p><strong>Tipo Venta:</strong> En Local</p>
                    <p><strong>Método Pago:</strong> Efectivo</p>
                    <hr>
                </div>

                <div class="boleta-productos">
                    <p class="productos-titulo"><strong>DETALLE DE PRODUCTOS:</strong></p>
                    <table>
                        <thead>
                            <tr>
                                <th>Cant.</th>
                                <th>Producto</th>
                                <th>Precio Unit.</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2</td>
                                <td>Tacos al Pastor</td>
                                <td>$ 15.00</td>
                                <td>$ 30.00</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Quesadilla de Pollo</td>
                                <td>$ 18.00</td>
                                <td>$ 18.00</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Agua de Jamaica</td>
                                <td>$ 6.00</td>
                                <td>$ 6.00</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr>
                </div>

                <div class="boleta-totales">
                    <p>Subtotal: $ 54.00</p>
                    <p>IGV (18%): $ 9.72</p>
                    <p class="total-final"><strong>TOTAL A PAGAR: $ 63.72</strong></p>
                </div>
            </div>
            <a href="#" class="btn-cerrar">Cerrar</a>
        </div>
    </div>
</body>