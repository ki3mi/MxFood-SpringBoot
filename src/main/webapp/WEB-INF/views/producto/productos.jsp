<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/productos.css">
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
            <h2>Formulario de Platillo</h2>
          </div>
        </div>
      </div>

      <div class="header-actions">
        <a href="/categorias" class="btn-categorias">
          Gestionar Categorias
        </a>
        <a href="/productos/create" class="btn-categorias">
          Crear Producto
        </a>
      </div>

    </header>
    <main class="main">

      <section class="list-section">
        <h2>Listado de Platillos</h2>
        <section class="grid" aria-label="Catálogo de platos">

          <!-- Card 1 -->
          <c:forEach items="${products}" var="product">

              <article class="card">
                <div class="media" style="background:linear-gradient(135deg,#fff2eb,#ffe7d8);">
                  <img src="../imag/taco-pastor.jpg" alt="img" class="img">
                </div>
                <div class="content">
                  <h3>ID: ${product.id}</h3>
                  <div class="title">
                    <h3>${product.nombre}</h3>
                    <div class="price">S/. ${product.precio}</div>
                  </div>
                  <p class="desc">${product.descripcion}</p>
                  <div class="tags">
                    <span class="tag">${product.category.nombre}</span>
                    <span class="tag" ${product.estado == 'Inactivo' ? 'style="background-color: rgb(224, 118, 118); color: white; border-color: black;"' : ''}>${product.estado}</span>
                  </div>
                  <div class="card-footer">
                    
                    <!-- BOTON DE EDITAR -->
                    <a href="${pageContext.request.contextPath}/productos/edit/${product.id}"><button class="ghost">Editar</button></a>

                    <!-- BOTON DE ELIMINAR -->
                    <form action="${pageContext.request.contextPath}/productos/deactivate/${product.id}" method="post">
                      <button type="submit" ${product.estado == 'Inactivo' ? 'style="visibility: hidden;"' : ''} onclick="return confirm('¿Deseas desactivar este producto?')" class="btn">Desactivar</button>
                    </form>
                  </div>
                </div>
              </article>

          </c:forEach>
        </section>
      </section>
    </main>
  </div>
</body>