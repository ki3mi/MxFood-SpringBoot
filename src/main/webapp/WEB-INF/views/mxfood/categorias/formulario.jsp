<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/categoria-form.css">

<body>
  <div class="container">

    <!-- HEADER -->
    <div class="header">
      <img src="/imag/logo.png" alt="Logo" class="logo-imagen">
      <h1 class="titulo-gestion">Editar / Crear Categoría</h1>
    </div>

    <!-- SECCION EDITAR -->
    <div class="edit-section">
      <!-- FORMULARIO -->
      <div class="form-container">
        <label for="nombre">Nombre de la categoría</label>
        <input type="text" id="nombre" value="" placeholder="Vegetariano, Tacos...">

        <label for="descripcion">Descripción</label>
        <textarea id="descripcion" rows="5" placeholder="Alimento que contiene..."></textarea>
      </div>
    </div>

    <!-- BOTONES GUARDAR / CANCELAR -->
    <div class="buttons-container">
      <a href="/categorias"><button class="btn-save">Guardar Cambios</button></a>
      <a href="/categorias"><button class="btn-cancel">Cancelar</button></a>
    </div>

  </div>
</body>