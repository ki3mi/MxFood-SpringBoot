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
          <c:forEach items="${pablo}" var="product">

            <form action="">
              <article class="card">
                <div class="media" style="background:linear-gradient(135deg,#fff2eb,#ffe7d8);">
                  <img src="../imag/taco-pastor.jpg" alt="img" class="img">
                </div>
                <div class="content">
                  <h3>ID: ${product.id}</h3>
                  <div class="title">
                    <h3>${product.nombre}</h3>
                    <div class="price">S/. 45</div>
                  </div>
                  <p class="desc">Clásicos tacos mexicanos de cerdo marinado con achiote y piña, servidos en tortillas de
                    maíz.</p>
                  <div class="tags"><span class="tag">Tradicional</span><span class="tag">Cerdo</span></div>
                  <div class="card-footer">
                    <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                    <a href=""><button class="btn">Eliminar</button></a>
                  </div>
                </div>
              </article>
            </form>

          </c:forEach>

          <!-- Card 2 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#ebfff7,#dffbf0);">
              <img src="../imag/guacamole-totopo.jpg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Guacamole con Totopos</h3>
                <div class="price">S/. 45</div>
              </div>
              <p class="desc">Crema de aguacate con jitomate, cebolla y cilantro fresco, acompañada de totopos
                crujientes.</p>
              <div class="tags"><span class="tag">Entrada</span><span class="tag">Vegano</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 3 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#fff7eb,#fff1d9);">
              <img src="../imag/enchilada-rojo.jpeg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Enchiladas Rojas</h3>
                <div class="price">S/. 56</div>
              </div>
              <p class="desc">Tortillas de maíz rellenas de pollo bañadas en salsa roja, con queso gratinado y crema.
              </p>
              <div class="tags"><span class="tag">Pollo</span><span class="tag">Picante</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 4 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#fff0ff,#ffe9fb);">
              <img src="../imag/churros.jpeg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Churros con Chocolate</h3>
                <div class="price">S/. 25</div>
              </div>
              <p class="desc">Crujientes churros espolvoreados con azúcar y canela, acompañados de chocolate caliente.
              </p>
              <div class="tags"><span class="tag">Postre</span><span class="tag">Dulce</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 5 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#f0fff9,#e7fff6);">
              <img src="../imag/ensalada-nopal.jpg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Ensalada Nopal</h3>
                <div class="price">S/. 35</div>
              </div>
              <p class="desc">Ensalada fresca con nopales, jitomate, cebolla y queso fresco, aderezada con limón.</p>
              <div class="tags"><span class="tag">Vegano</span><span class="tag">Saludable</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 6 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#fff8f0,#fff3e6);">
              <img src="../imag/quesadillas-queso.jpg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Quesadillas de Queso</h3>
                <div class="price">S/. 45</div>
              </div>
              <p class="desc">Tortillas de maíz rellenas de queso derretido, acompañadas de salsa verde o roja.</p>
              <div class="tags"><span class="tag">Entrada</span><span class="tag">Queso</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 7 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#eef6ff,#e8f1ff);">
              <img src="../imag/pozole.jpg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Pozole Rojo</h3>
                <div class="price">S/. 40</div>
              </div>
              <p class="desc">Sopa tradicional de maíz hominy con carne de cerdo, acompañada de rábanos, lechuga y
                orégano.</p>
              <div class="tags"><span class="tag">Tradicional</span><span class="tag">Caldo</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

          <!-- Card 8 -->
          <article class="card">
            <div class="media" style="background:linear-gradient(135deg,#fff6f0,#fff0e6);">
              <img src="../imag/tamal.jpg" alt="img" class="img">
            </div>
            <div class="content">
              <div class="title">
                <h3>Tamales de Elote</h3>
                <div class="price">S/. 50</div>
              </div>
              <p class="desc">Tamales dulces de elote tierno, cocidos en hoja de maíz y servidos calientes.</p>
              <div class="tags"><span class="tag">Tradicional</span><span class="tag">Dulce</span></div>
              <div class="card-footer">
                <a href="editarPlatillo.html"><button class="ghost">Editar</button></a>
                <a href=""><button class="btn">Eliminar</button></a>
              </div>
            </div>
          </article>

        </section>
      </section>
    </main>
  </div>
</body>