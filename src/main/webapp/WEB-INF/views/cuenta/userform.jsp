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
          <form class="card form" action="${pageContext.request.contextPath}/user/crear" method="post">
            <h2>Crear Usuario</h2>
            <label>
              Nombre del Trabajador
            </label>
            <input type="text" name="nombre" placeholder="Trabajador..." required>

            <label>
              Contraseña
            </label>
            <input type="password" name="password" required>

            <label>
              Email
            </label>
            <input type="text" name="email" placeholder="name@email.com" required>

            <label>
              Teléfono
            </label>
            <input type="text" name="telefono" placeholder="987654321" required>

            <label>
              DNI
            </label>
            <input type="text" name="dni" placeholder="70000000" required>

            <label>
              Estado
            </label>
            <select name="estado">
              <option value="Activo">Activo</option>
              <option value="Inactivo">Inactivo</option>
            </select>

            <div class="card-footer">
              <button type="submit" class="btn">Guardar</button>
            </div>
          </form>
        </section>
    </body>