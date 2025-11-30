<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/venta.css">
<body>
    <header class="header">
        <a href="/menu"><img src="${pageContext.request.contextPath}/imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-img"></a>
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
            <a href="#modalBoleta" class="btn-delivery">Continuar</a>
            <!-- <a href="delivery.html" class="btn-delivery">Ir a Delivery</a> -->
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