<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="/css/venta.css">
<body>
    <header class="header">
        <a href="/menu"><img src="/imag/MexicanHosue.png" alt="Logo Mexican House" class="logo-img"></a>
        <h1>Registro de Ventas</h1>
    </header>
    <main class="container">
        <div class="modal-contenido">
            <h2>Boleta de Compra</h2>
    
            <div id="detalleBoleta" class="boleta-detalle">
                <div class="boleta-header">
                    <p><strong>Razón Social:</strong> Mexican House S.A.C.</p>
                    <p><strong>RUC:</strong> 20567891234</p>
                    <p><strong>Fecha:</strong> ${sale.fecha}</p>
                    <hr>
                </div>
    
                <div class="boleta-cliente">
                    <p><strong>Cliente:</strong> ${sale.nombre} </p>
                    <p><strong>DNI:</strong> ${sale.dni} </p>
                    <p><strong>Tipo Venta:</strong> ${sale.tipo}</p>
                    <c:if test="${sale.tipo == 'Delivery'}">
                        <p><strong>Dirección:</strong> ${sale.direccion}</p>
                    </c:if>
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
                            <c:forEach items="${sale.details}" var="detail">
                                <tr>
                                    <td>${detail.cantidad}</td>
                                    <td>${detail.product.nombre}</td>
                                    <td>S/. ${detail.product.precio}</td>
                                    <td>S/. ${detail.subTotal}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                </div>
    
                <div class="boleta-totales">
                    <p>Subtotal: S/. <fmt:formatNumber value="${sale.total * 0.82}" type="number" minFractionDigits="2" maxFractionDigits="2"/></p>
                    <p>IGV (18%): S/. <fmt:formatNumber value="${sale.total * 0.18}" type="number" minFractionDigits="2" maxFractionDigits="2"/></p>
                    <p class="total-final"><strong>TOTAL A PAGAR: S/. ${sale.total}</strong></p>
                </div>
            </div>
            <c:if test="${isList}">
                <a href="${pageContext.request.contextPath}/ventas/listar" class="btn-cerrar">Cerrar</a>
            </c:if>
            <c:if test="${!isList}">
                <a href="${pageContext.request.contextPath}/ventas/registrar" class="btn-cerrar">Cerrar</a>
            </c:if>
        </div>
    </main>

</body>