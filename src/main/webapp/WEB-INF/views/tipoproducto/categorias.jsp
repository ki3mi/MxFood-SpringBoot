<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/categorias.css">

<body>

  <div class="container">
    <header>
      <div class="brand">
        <div class="logo">
          <a href="/menu">
            <img src="imag/logo.png" alt="img" class="img">
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
            <th>Descripción</th>
            <th style="width:18%">Opciones</th>
          </tr>
        </thead>
        <tbody>
          <!-- Filas de ejemplo -->
          <tr>
            <td>1</td>
            <td>Entradas</td>
            <td>Platos de entrada rotativos.</td>
            <td>
              <div class="actions">
                <a href="/categorias/editar"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
          <tr>
            <td>2</td>
            <td>Principal</td>
            <td>Platos fuertes de la carta.</td>
            <td>
              <div class="actions">
                <a href="edit-create-Categoria.html"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
          <tr>
            <td>3</td>
            <td>Tacos</td>
            <td>Todo tipo de tacos.</td>
            <td>
              <div class="actions">
                <a href="edit-create-Categoria.html"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
          <tr>
            <td>4</td>
            <td>Postres</td>
            <td>Variedad e postres.</td>
            <td>
              <div class="actions">
                <a href="edit-create-Categoria.html"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
          <tr>
            <td>5</td>
            <td>Vegetariano</td>
            <td>Platos centrados en vegetales y poco o nulo contenido animal.</td>
            <td>
              <div class="actions">
                <a href="edit-create-Categoria.html"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
          <tr>
            <td>5</td>
            <td>Sin gluten</td>
            <td>Alimento que contiene menos de 20 partes por millón (ppm) de gluten y que no contiene trigo, centeno,
              cebada o cruces de estos cereales.</td>
            <td>
              <div class="actions">
                <a href="edit-create-Categoria.html"><button class="btn-edit">Editar</button></a>
                <a href=""><button class="btn-delete">Eliminar</button></a>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </main>
  </div>
</body>