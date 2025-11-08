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

            <form action="">
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
                  <div class="tags"><span class="tag">${product.category.nombre}</span></div>
                  <div class="card-footer">
                    <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                    <a href=""><button class="btn">Eliminar</button></a>
                  </div>
                </div>
              </article>
            </form>

          </c:forEach>
        </section>
      </section>
    </main>
  </div>
</body>