<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/login.css">
<body>
    <div class="contenedor-principal">
        <div class="seccion-imagen">
            <img src="imag/Tacos.webp" alt="Tacos">
        </div>

        <div class="seccion-formulario">
            <div class="contenedor-logo">
                <img src="imag/MexicanHosue.png" alt="Mexican House Logo">
            </div>

            <h1 class="titulo-sistema">Sistema de Gestión de Ventas</h1>

            <h2 class="subtitulo">Ingresa tus datos</h2>

            <form class="formulario-login" action="${pageContext.request.contextPath}/login" method="post">
                <div class="campo-entrada">
                    <label for="usuario">Email</label>
                    <input type="text" id="usuario" name="username" placeholder="Email">
                </div>

                <div class="campo-entrada">
                    <label for="contrasena">Contraseña</label>
                    <div class="contenedor-contrasena">
                        <input type="password" id="contrasena" name="password" placeholder="Contraseña">
                        <span class="icono-ojo">&#128065;</span>
                    </div>
                </div>
                <input type="submit" value="Ingresar" class="boton-inicio-sesion"/>
            </form>
            <c:if test="${not empty error}">
                <p style="color:red">${error}</p>
            </c:if>
        </div>
    </div>
</body>
