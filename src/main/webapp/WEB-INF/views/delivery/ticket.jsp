<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/venta.css">
<body>
    <header class="header">
        <a href="/menu"><img src="/imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-img"></a>
    </header>
    <main class="container">
        <div class="modal-contenido">
            <h2>Ticket de Pedido</h2>
    
            <div id="detalleBoleta" class="boleta-detalle">    
                <div class="boleta-cliente">
                    <p><strong>ID:</strong> ${sale.id} </p>
                    <p><strong>Cliente:</strong> ${sale.nombre} </p>
                    <p><strong>DNI:</strong> ${sale.dni} </p>
                    <p><strong>Tipo Venta:</strong> ${sale.tipo}</p>
                    <hr>
                </div>
    
                <div class="boleta-productos">
                    <p class="productos-titulo"><strong>PLATILLOS:</strong></p>
                    <table>
                        <thead>
                            <tr>
                                <th>Cant.</th>
                                <th>Producto</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sale.details}" var="detail">
                                <tr>
                                    <td>${detail.cantidad}</td>
                                    <td>${detail.product.nombre}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/pendientes" class="btn-cerrar">Cerrar</a>
        </div>
    </main>

</body>