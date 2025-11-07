<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../css/cuenta.css">

<body>
    <div class="container">
        <img src="../imag/MexicanHosue.png" alt="Mexican House Logo" class="logo">

        <h2 class="subtitle">Información de Cuenta</h2>

        <div class="card usuario">
            <img src="../imag/empleado.webp" alt="Foto de perfil del empleado" class="usuario-img">

            <h3>Juan Pérez</h3>

            <p><strong>ID de Empleado:</strong><c:out value="${sessionScope.userLogged.id}"/></p>
            <p><strong>Nombre:</strong><c:out value="${sessionScope.userLogged.nombre}"/></p>
            <p><strong>DNI:</strong><c:out value="${sessionScope.userLogged.dni}"/></p>

            <hr class="separator">

            <p><strong>Email:</strong> <c:out value="${sessionScope.userLogged.email}"/></p>
            <p><strong>Teléfono:</strong> +51 <c:out value="${sessionScope.userLogged.telefono}"/></p>
            <p><strong>Nombre:</strong><c:out value="${sessionScope.userLogged.estado}"/></p>

        </div>

        <div style="margin-top: 25px;">
            <a href="/menu" class="btn-volver">⬅ Volver al Menú</a>
            <a href="/logout" class="btn-close"> Cerrar sesión</a>
        </div>
    </div>
</body>