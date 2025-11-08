<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <link rel="stylesheet" href="/css/producto-form.css">

        <body>
            <div class="container">
                <section class="form-section">
                    <div class="logo">
                        <a href="/menu">
                            <img src="../imag/logo.png" alt="img" class="img">
                        </a>
                        <a href="/productos"><button type="reset" class="ghost">Volver</button></a>
                    </div>
                    <form class="card form" action="${pageContext.request.contextPath}/productos/crear" method="post">
                        <h2>Crear Producto</h2>
                        <label>
                            Nombre del Platillo
                        </label>
                        <input type="text" name="nombre" placeholder="Ej. Tacos al Pastor" required>

                        <label>
                            Descripción
                        </label>
                        <textarea placeholder="Describe el platillo..." rows="4" name="descripcion"></textarea>

                        <label>
                            Precio
                        </label>
                        <input type="number" step="0.01" name="precio" placeholder="S/. 0.00">

                        <select name="estado">
                            <option value="Disponible">Disponible</option>
                            <!-- <option value="Agotado">Agotado</option> -->
                            <option value="Inactivo">Inactivo</option>
                        </select>

                        <label>
                            Categoría
                        </label>
                        <select name="categoryId">
                            <c:forEach items="${categories}" var="category">
                                <option value="${category.id}">${category.nombre}</option>
                            </c:forEach>
                        </select>
                        <div class="card-footer">
                            <button type="submit" class="btn">Guardar</button>
                        </div>
                    </form>
                </section>
        </body>