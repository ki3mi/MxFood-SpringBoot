<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../css/categorias.css">

<body>

  <div class="container">
    <header>
      <div class="brand">
        <div class="logo">
          <a href="/menu">
            <img src="../imag/logo.png" alt="img" class="img">
          </a>
        </div>
        <div>
          <div class="main-title">
            <h2>Gestión de Categorías</h2>
          </div>
        </div>
      </div>
    </header>
    <main class="main">
      <div class="toolbar">
        <a href="/categorias/crear" class="btn-primary">+ Nueva categoría</a>
      </div>


      <table id="categoriesTable" aria-label="Tabla de categorías">
        <thead>
          <tr>
            <th style="width:8%">ID</th>
            <th style="width:22%">Nombre</th>
            <th style="width:22%;">Estado</th>
            <th>Descripción</th>
            <th style="width:18%">Opciones</th>
          </tr>
        </thead>
        <tbody>
          <!-- Filas de ejemplo -->
          <c:forEach items="${categories}" var="category">
            <form action="">
              <tr>
                <td>${category.id}</td>
                <td>${category.nombre}</td>
                <td>${category.estado}</td>
                <td>${category.descripcion}</td>
                <td>
                  <div class="actions">
                    <a href="/categorias/editar"><button class="btn-edit">Editar</button></a>
                    <a href=""><button class="btn-delete">Desactivar</button></a>
                  </div>
                </td>
              </tr>
            </form>
          </c:forEach>

        </tbody>
      </table>
    </main>
  </div>
</body>