<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}css/metricas.css">
<body>
    <div class="container">

        <header>
            <div class="header-center">
                <a href="${pageContext.request.contextPath}/menu">
                    <!-- Tu imagen de logo original restaurada -->
                    <img src="imag/MexicanHosue.png" alt="Mexican House Logo" class="logo-header">
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
                    <img src="imag/Dinero.png" alt="Ventas por Mes">
                </div>
                <h3>📈 Ventas Totales (S/) - Últimos 6 Meses</h3>
                <p class="valor-metrica"><strong>Total Semestral: S/ 15,200.00</strong></p>

                <div class="mini-grafico-vertical">
                    <div class="barra-v" style="height:40%;" title="Ene S/ 2200"><span
                            class="valor-barra">2.2k</span><span class="etiqueta-barra">Ene</span></div>
                    <div class="barra-v" style="height:25%;" title="Feb S/ 1800"><span
                            class="valor-barra">1.8k</span><span class="etiqueta-barra">Feb</span></div>
                    <div class="barra-v" style="height:55%;" title="Mar S/ 2800"><span
                            class="valor-barra">2.8k</span><span class="etiqueta-barra">Mar</span></div>
                    <div class="barra-v" style="height:65%;" title="Abr S/ 3100"><span
                            class="valor-barra">3.1k</span><span class="etiqueta-barra">Abr</span></div>
                    <div class="barra-v" style="height:55%;" title="May S/ 2800"><span
                            class="valor-barra">2.8k</span><span class="etiqueta-barra">May</span></div>
                    <div class="barra-v" style="height:80%;" title="Jun S/ 3500"><span
                            class="valor-barra">3.5k</span><span class="etiqueta-barra">Jun</span></div>
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
                    <img src="imag/medalla.png" alt="Ventas por Categoría">
                </div>
                <h3>📊 Evolución por Categoría (S/) - Semestral</h3>
                <p class="valor-metrica">Categoría Más Vendida-Tacos: 7,300 Soles</p>

                <div class="grafico-linea-container">
                    <!-- Eje X: 40, 88, 136, 184, 232, 280 -->
                    <svg class="grafico-linea-svg" viewBox="0 0 300 150" preserveAspectRatio="xMidYMid meet">
                        <!-- Ejes y etiquetas (6 meses) -->
                        <line class="eje" x1="20" y1="130" x2="280" y2="130"></line>
                        <text class="etiquetas" x="40" y="145">Ene</text>
                        <text class="etiquetas" x="88" y="145">Feb</text>
                        <text class="etiquetas" x="136" y="145">Mar</text>
                        <text class="etiquetas" x="184" y="145">Abr</text>
                        <text class="etiquetas" x="232" y="145">May</text>
                        <text class="etiquetas" x="280" y="145">Jun</text>

                        <!-- Línea 1: Tacos -->
                        <polyline class="linea-datos linea-tacos" points="40,80 88,90 136,60 184,40 232,30 280,50">
                        </polyline>
                        <circle class="puntos-datos punto-tacos" cx="40" cy="80" r="3"></circle>
                        <circle class="puntos-datos punto-tacos" cx="88" cy="90" r="3"></circle>
                        <circle class="puntos-datos punto-tacos" cx="136" cy="60" r="3"></circle>
                        <circle class="puntos-datos punto-tacos" cx="184" cy="40" r="3"></circle>
                        <circle class="puntos-datos punto-tacos" cx="232" cy="30" r="3"></circle>
                        <circle class="puntos-datos punto-tacos" cx="280" cy="50" r="3"></circle>

                        <!-- Línea 2: Bebidas -->
                        <polyline class="linea-datos linea-bebidas" points="40,90 88,100 136,80 184,70 232,80 280,70">
                        </polyline>
                        <circle class="puntos-datos punto-bebidas" cx="40" cy="90" r="3"></circle>
                        <circle class="puntos-datos punto-bebidas" cx="88" cy="100" r="3"></circle>
                        <circle class="puntos-datos punto-bebidas" cx="136" cy="80" r="3"></circle>
                        <circle class="puntos-datos punto-bebidas" cx="184" cy="70" r="3"></circle>
                        <circle class="puntos-datos punto-bebidas" cx="232" cy="80" r="3"></circle>
                        <circle class="puntos-datos punto-bebidas" cx="280" cy="70" r="3"></circle>

                        <!-- Línea 3: Botanas -->
                        <polyline class="linea-datos linea-botanas"
                            points="40,110 88,120 136,115 184,105 232,110 280,100"></polyline>
                        <circle class="puntos-datos punto-botanas" cx="40" cy="110" r="3"></circle>
                        <circle class="puntos-datos punto-botanas" cx="88" cy="120" r="3"></circle>
                        <circle class="puntos-datos punto-botanas" cx="136" cy="115" r="3"></circle>
                        <circle class="puntos-datos punto-botanas" cx="184" cy="105" r="3"></circle>
                        <circle class="puntos-datos punto-botanas" cx="232" cy="110" r="3"></circle>
                        <circle class="puntos-datos punto-botanas" cx="280" cy="100" r="3"></circle>
                    </svg>
                </div>
                <div class="leyenda">
                    <p><span style="background:#D94334;"></span> Tacos</p>
                    <p><span style="background:#007bff;"></span> Bebidas</p>
                    <p><span style="background:#4d9a4d;"></span> Botanas</p>
                </div>
            </div>

            <!-- 
                MÉTRICA 3 (CORREGIDA): CANTIDAD DE PRODUCTOS VENDIDOS - MENSUAL
                Ahora cumple el requisito "Cantidad de productos vendidos" + "Dimensión de Tiempo".
                Reutiliza el gráfico de barras verticales de la Métrica 1.
            -->
            <div class="card-metrica">
                <div class="icono-metrica">
                    <!-- Tu icono original restaurado -->
                    <img src="imag/Dias.png" alt="Cantidad de Productos">
                </div>
                <h3>📦 Cantidad Total de Productos Vendidos</h3>
                <p class="valor-metrica"><strong>Total Semestral: 5,500 Productos Vendidos</strong></p>

                <div class="mini-grafico-vertical">
                    <div class="barra-v" style="height:40%;" title="Ene 600"><span class="valor-barra">600</span><span
                            class="etiqueta-barra">Ene</span></div>
                    <div class="barra-v" style="height:35%;" title="Feb 550"><span class="valor-barra">550</span><span
                            class="etiqueta-barra">Feb</span></div>
                    <div class="barra-v" style="height:60%;" title="Mar 800"><span class="valor-barra">800</span><span
                            class="etiqueta-barra">Mar</span></div>
                    <div class="barra-v" style="height:70%;" title="Abr 900"><span class="valor-barra">900</span><span
                            class="etiqueta-barra">Abr</span></div>
                    <div class="barra-v" style="height:65%;" title="May 850"><span class="valor-barra">850</span><span
                            class="etiqueta-barra">May</span></div>
                    <div class="barra-v" style="height:80%;" title="Jun 1000"><span class="valor-barra">1k</span><span
                            class="etiqueta-barra">Jun</span></div>
                </div>
                <div class="formula-description" style="font-size:0.8em; text-align:center; margin-top:5px;">*Datos en
                    Unidades (uds)*</div>
            </div>

        </div>
    </div>
</body>