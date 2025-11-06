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

            <form class="formulario-login">
                <div class="campo-entrada">
                    <label for="usuario">Usuario</label>
                    <input type="text" id="usuario" placeholder="Nombre de Usuario o ID">
                </div>

                <div class="campo-entrada">
                    <label for="contrasena">Contraseña</label>
                    <div class="contenedor-contrasena">
                        <input type="password" id="contrasena" placeholder="Contraseña">
                        <span class="icono-ojo">&#128065;</span>
                    </div>
                </div>

            </form>
            <a href="/menu"><button type="submit" class="boton-inicio-sesion">Iniciar Sesión</button></a>

            <a href="#" class="enlace-olvidaste">Olvidaste tu contraseña?</a>
        </div>
    </div>
</body>
