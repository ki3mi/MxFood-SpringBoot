<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/metricas.css">
<body>
    <div class="container">

        <header>
            <div class="header-center">
                <a href="/menu">
                    <img src="imag/MexicanHosue.png" alt="Mexican House Logo" class="logo-header">
                </a>
            </div>
        </header>

        <div class="subtitle-container">
            <h2 class="subtitle">Métricas de la semana</h2>
        </div>

        <div class="metricas-grid">

            <div class="card-metrica">
                <div class="icono-metrica">
                    <img src="imag/Dias.png" alt="Pedidos de la Semana">
                </div>
                <h3>1. Pedidos por Día 🥧</h3>
                <p class="valor-metrica"><strong>Total Semanal: 100 Pedidos</strong></p>

                <div class="formula-bloque-container">
                    <div class="formula-bloque lado-izquierdo">% Pedidos/Día</div>
                    <span class="formula-igual">=</span>
                    <div class="formula-bloque lado-derecho">
                        <p class="numerador">Pedidos del Día</p>
                        <hr class="linea-division">
                        <p class="denominador"># de Pedidos Total</p>
                    </div>
                </div>

                <div class="grafico-circular-unico">
                    <div class="pie" style="--a:50; --b:20; --c:15; --d:15;"></div>
                    <div class="leyenda">
                        <p><span style="background:#7fc17f;"></span> Lunes (50%)</p>
                        <p><span style="background:#4d9a4d;"></span> Martes (20%)</p>
                        <p><span style="background:#a0d18c;"></span> Miércoles (15%)</p>
                        <p><span style="background:#60b84f;"></span> Jueves (15%)</p>
                    </div>
                </div>
            </div>

            <div class="card-metrica">
                <div class="icono-metrica">
                    <img src="imag/medalla.png" alt="Distribución de Ventas por Platillo">
                </div>
                <h3>2. Distribución de Ventas (%)</h3>
                <p class="valor-metrica">Platillo Estrella: 40%</p>

                <div class="key-insight">
                    <p class="insight-label">Crecimiento de Tacos al Pastor (vs. Semana Anterior):</p>
                    <p class="insight-value trend-up">⬆️ +5%</p>
                </div>
                <div class="formula-bloque-container">
                    <div class="formula-bloque lado-izquierdo">Participación (%)</div>
                    <span class="formula-igual">=</span>
                    <div class="formula-bloque lado-derecho">
                        <p class="numerador">Ventas Platillo</p>
                        <hr class="linea-division">
                        <p class="denominador">Ventas Totales</p>
                    </div>
                </div>
                <div class="mini-grafico-horizontal">
                    <div class="barra-h" style="width:90%;">Tacos al Pastor - 40%</div>
                    <div class="barra-h" style="width:65%;">Enchiladas - 25%</div>
                    <div class="barra-h" style="width:45%;">Pozole - 15%</div>
                    <div class="barra-h" style="width:35%;">Quesadillas - 10%</div>
                    <div class="barra-h" style="width:25%;">Otros - 10%</div>
                </div>
            </div>

            <div class="card-metrica">
                <div class="icono-metrica">
                    <img src="imag/Dinero.png" alt="Ticket de Consumo Promedio">
                </div>
                <h3>3. Ticket Promedio Diario 📈</h3>
                <p class="valor-metrica"><strong>S/ 40.00</strong> (Promedio Semanal)</p>

                <div class="formula-bloque-container">
                    <div class="formula-bloque lado-izquierdo">Ticket Promedio</div>
                    <span class="formula-igual">=</span>
                    <div class="formula-bloque lado-derecho">
                        <p class="numerador">Ingresos Totales</p>
                        <hr class="linea-division">
                        <p class="denominador"># de Pedidos</p>
                    </div>
                </div>

                <p class="formula-description" style="text-align:center; font-weight:bold; color:#4d9a4d;">
                    S/ 4,800 / 120 Pedidos = S/ 40.00
                </p>

                <div class="mini-grafico-vertical" style="height:150px; margin-top:15px;">
                    <div class="barra-v" style="height:40%;" title="Lun S/ 38"><span class="valor-barra">38</span><span
                            class="etiqueta-barra">L</span></div>
                    <div class="barra-v" style="height:25%;" title="Mar S/ 35"><span class="valor-barra">35</span><span
                            class="etiqueta-barra">M</span></div>
                    <div class="barra-v" style="height:55%;" title="Mié S/ 40"><span class="valor-barra">40</span><span
                            class="etiqueta-barra">M</span></div>
                    <div class="barra-v" style="height:65%;" title="Jue S/ 42"><span class="valor-barra">42</span><span
                            class="etiqueta-barra">J</span></div>
                    <div class="barra-v" style="height:55%;" title="Vie S/ 40"><span class="valor-barra">40</span><span
                            class="etiqueta-barra">V</span></div>
                    <div class="barra-v" style="height:80%;" title="Sáb S/ 44"><span class="valor-barra">44</span><span
                            class="etiqueta-barra">S</span></div>
                    <div class="barra-v" style="height:90%;" title="Dom S/ 45"><span class="valor-barra">45</span><span
                            class="etiqueta-barra">D</span></div>
                </div>
                <div style="font-size:0.7em; text-align:center; margin-top:5px;">*Datos en Soles (S/)*</div>
            </div>

        </div>
    </div>
</body>