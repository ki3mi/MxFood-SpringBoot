<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/producto-form.css">

    <body>
      <div class="container">
        <section class="form-section">
          <div class="logo">
            <a href="/menu">
              <img src="${pageContext.request.contextPath}/imag/logo.png" alt="img" class="img">
            </a>
            <a href="/user"><button type="reset" class="ghost">Volver</button></a>
          </div>
          <form class="card form" action="${pageContext.request.contextPath}/user/update" method="post">
            <h2>Crear Usuario</h2>
            <input type="hidden" name="id" value="${user.id}" required>

            <label>
              Nombre del Trabajador
            </label>
            <input type="text" name="nombre" value="${user.nombre}" required>

            <label>
              Contraseña
            </label>
            <input type="text" name="password" value="${user.password}" required>

            <label>
              Email
            </label>
            <input type="text" name="email" value="${user.email}" required>

            <label>
              Teléfono
            </label>
            <input type="text" name="telefono" value="${user.telefono}" required>

            <label>
              DNI
            </label>
            <input type="text" name="dni" value="${user.dni}" required>

            <label>
              Estado
            </label>
            <select name="estado">
              <option value="Activo" ${user.estado == 'Activo' ? 'selected' : ''}>Activo</option>
              <option value="Inactivo" ${user.estado == 'Inactivo' ? 'selected' : ''}>Inactivo</option>
            </select>

            <div class="card-footer">
              <button type="submit" class="btn">Guardar</button>
            </div>
          </form>
        </section>
    </body>