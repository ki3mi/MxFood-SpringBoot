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
            <a href="/categorias"><button type="reset" class="ghost">Volver</button></a>
          </div>
          <form class="card form" action="${pageContext.request.contextPath}/categorias/update" method="post">
            <h2>Editar Categoria</h2>
            <input type="hidden" name="id" value="${category.id}">
            <label>
              Nombre de la categoria
            </label>
            <input type="text" name="nombre" value="${category.nombre}" required>
    
            <label>
              Descripción
            </label>
            <input name="descripcion" value="${category.descripcion}"></input>
    
            <label>
              Estado
            </label>
            <select name="estado">
              <option value="Activo" ${category.estado == 'Activo' ? 'selected' : ''}>Activo</option>
              <option value="Inactivo" ${category.estado == 'Inactivo' ? 'selected' : ''}>Inactivo</option>
            </select>
    
            <div class="card-footer">
              <button type="submit" class="btn">Guardar</button>
            </div>
          </form>
        </section>
    </body>