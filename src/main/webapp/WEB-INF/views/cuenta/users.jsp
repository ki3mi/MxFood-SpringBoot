<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/categorias.css">

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
            <h2>Gestión de Usuarios</h2>
          </div>
        </div>
      </div>
    </header>
    <main class="main">
      <div class="toolbar">
        <a href="/user/create" class="btn-primary">Nueva Usuario</a>
      </div>


      <table id="categoriesTable" aria-label="Tabla de categorías">
        <thead>
          <tr>
            <th style="width:8%">ID</th>
            <th style="width:15%">Nombre</th>
            <th style="width:15%;">Estado</th>
            <th style="width:15%;">DNI</th>
            <th>Email</th>
            <th style="width:18%">Opciones</th>
          </tr>
        </thead>
        <tbody>
          <!-- Filas de ejemplo -->
          <c:forEach items="${users}" var="user">            
              <tr>
                <td>${user.id}</td>
                <td>${user.nombre}</td>
                <td>${user.estado}</td>
                <td>${user.dni}</td>
                <td>${user.email}</td>
                <td>
                  <div class="actions">
                    <!-- Boton de eliminar -->
                    <form action="${pageContext.request.contextPath}/user/deactivate/${user.id}" method="post">
                      <button type="submit" ${user.estado == 'Inactivo' ? 'style="visibility: hidden;"' : ''} onclick="return confirm('¿Deseas desactivar esta Categoria?')" class="btn-delete">Desactivar</button>
                    </form>
                    <!-- Boton de editar -->
                    <a href="${pageContext.request.contextPath}/user/edit/${user.id}"><button class="btn-edit">Editar</button></a>                    
                  </div>
                </td>
              </tr>            
          </c:forEach>

        </tbody>
      </table>
    </main>
  </div>
</body>