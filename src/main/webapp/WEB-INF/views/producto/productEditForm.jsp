<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <link rel="stylesheet" href="/css/producto-form.css">

        <body>
            <div class="container">
                <section class="form-section">
                    <div class="logo">
                        <a href="/menu">
                            <img src="../../imag/logo.png" alt="img" class="img">
                        </a>
                        <a href="/productos"><button type="reset" class="ghost">Volver</button></a>
                    </div>
                    <form class="card form" action="${pageContext.request.contextPath}/productos/update" method="post">
                        <h2>Editar Producto</h2>
                        <input type="hidden" name="id" value="${product.id}">
                        <label>
                            Nombre del Platillo
                        </label>
                        <input type="text" name="nombre" value="${product.nombre}" required>

                        <label>
                            Descripción
                        </label>
                        <input name="descripcion" value="${product.descripcion}" />

                        <label>
                            Precio
                        </label>
                        <input type="number" step="0.01" name="precio" value="${product.precio}" required>

                        <label>
                            Estado
                        </label>
                        <select name="estado" required>
                            <option value="Disponible" ${product.estado=='Disponible' ? 'selected' : '' }>Disponible
                            </option>
                            <!-- <option value="Agotado" ${product.estado=='Agotado' ? 'selected' : '' }>Agotado</option> -->
                            <option value="Inactivo" ${product.estado=='Inactivo' ? 'selected' : '' }>Inactivo</option>
                        </select>

                        <label>
                            Categoría
                        </label>
                        <select name="categoryId" required>
                            <c:forEach items="${categories}" var="category">
                                <option value="${category.id}" ${category.id==product.categoryId ? 'selected' : '' }>
                                    ${category.nombre}</option>
                            </c:forEach>
                        </select>
                        <div class="card-footer">
                            <button type="submit" class="btn">Guardar</button>
                        </div>
                    </form>
                </section>
        </body>