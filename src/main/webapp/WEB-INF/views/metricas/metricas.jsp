<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="../css/metricas.css">
<body>
    <div class="container">

        <header>
            <div class="header-center">
                <a href="${pageContext.request.contextPath}/menu">
                    <!-- Tu imagen de logo original restaurada -->
                    <img src="${pageContext.request.contextPath}/imag/MexicanHosue.png" alt="Mexican House Logo" class="logo-header">
                </a>
            </div>
        </header>

        <div class="subtitle-container">
            <h2 class="subtitle">Métricas de ventas</h2>
        </div>

        <div class="metricas-grid">

            <!-- 
                MÉTRICA 1: VENTAS TOTALES (S/) - MENSUAL
                (Gráfico de Barras Verticales)
            -->
            <div class="card-metrica">
                <div class="icono-metrica">
                    <!-- Tu icono original restaurado -->
                    <img src="${pageContext.request.contextPath}/imag/Dinero.png" alt="Ventas por Mes">
                </div>
                <h3>📈 Ventas Totales (S/) - Últimos 6 Meses</h3>
                <p class="valor-metrica"><strong>Total Semestral: S/ ${totalSixMonth}</strong></p>

                <div class="mini-grafico-vertical">
                    <c:forEach items="${mesSales}" var="mesSale">
                        <div class="barra-v" 
                                style="height: ${mesSale.porcentual}%;"
                                title="${mesSale.etiqueta} S/ ${mesSale.subTotal}">
                                <span
                                    class="valor-barra">${mesSale.totalFormat}
                                </span>
                                <span class="etiqueta-barra">
                                    ${mesSale.etiqueta}
                                </span>
                        </div>
                    </c:forEach>
                </div>
                <div class="formula-description" style="font-size:0.8em; text-align:center; margin-top:5px;">*Datos en
                    Soles (S/)*</div>
            </div>

            <!-- 
                MÉTRICA 2: EVOLUCIÓN POR CATEGORÍA - MENSUAL
                (Gráfico de Múltiples Líneas)
            -->
            <div class="card-metrica">
                <div class="icono-metrica">
                    <!-- Tu icono original restaurado -->
                    <img src="${pageContext.request.contextPath}/imag/medalla.png" alt="Ventas por Categoría">
                </div>
                <h3>📊 Evolución por Categoría (S/) - Semestral</h3>
                <p class="valor-metrica">Total de Ventas: ${totalSixCategory} Soles</p>

                <div class="mini-grafico-vertical">
                    <c:forEach items="${categorySales}" var="category">
                        <div class="barra-v" 
                                style="height: ${category.porcentual}%;"
                                title="${category.etiqueta} S/ ${category.subTotal}">
                                <span
                                    class="valor-barra">${category.totalFormat}
                                </span>
                                <span class="etiqueta-barra">
                                    ${category.etiqueta}
                                </span>
                        </div>
                    </c:forEach>
                </div>
                <div class="formula-description" style="font-size:0.8em; text-align:center; margin-top:5px;">*Datos en
                    Soles (S/)*</div>
            </div>

            <!-- 
                MÉTRICA 3 (CORREGIDA): CANTIDAD DE PRODUCTOS VENDIDOS - MENSUAL
                Ahora cumple el requisito "Cantidad de productos vendidos" + "Dimensión de Tiempo".
                Reutiliza el gráfico de barras verticales de la Métrica 1.
            -->
            <div class="card-metrica">
                <div class="icono-metrica">
                    <!-- Tu icono original restaurado -->
                    <img src="${pageContext.request.contextPath}/imag/Dias.png" alt="Cantidad de Productos">
                </div>
                <h3>📦 Cantidad Total de Productos Vendidos</h3>
                <p class="valor-metrica"><strong>Total Semestral: ${totalSixProduct} Productos Vendidos</strong></p>

                <div class="mini-grafico-vertical">
                    <c:forEach items="${productSales}" var="product">
                        <div class="barra-v" 
                                style="height: ${product.porcentual}%;"
                                title="${product.etiqueta} S/ ${product.subTotal}">
                                <span
                                    class="valor-barra">${product.totalFormat}
                                </span>
                                <span class="etiqueta-barra">
                                    ${product.etiqueta}
                                </span>
                        </div>
                    </c:forEach>
                </div>
                <div class="formula-description" style="font-size:0.8em; text-align:center; margin-top:5px;">*Datos en
                    Unidades*</div>
            </div>

        </div>
    </div>
</body>