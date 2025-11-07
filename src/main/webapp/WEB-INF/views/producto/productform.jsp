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
                    <form class="card form" action="">
                        <label>
                            Nombre del Platillo
                            <input type="text" placeholder="Ej. Tacos al Pastor">
                        </label>

                        <label>
                            Precio
                            <input type="number" placeholder="S/. 0.00">
                        </label>

                        <label>
                            Descripción
                            <textarea placeholder="Describe el platillo..." rows="4"></textarea>
                        </label>

                        <label>
                            Categoría
                            <select>
                                <option>Entradas</option>
                                <option>Principales</option>
                                <option>Postres</option>
                                <option>Vegano</option>
                                <option>Sin gluten</option>
                            </select>
                        </label>

                        <label>
                            Imagen
                            <input type="file" accept="image/*">
                        </label>

                        <div class="card-footer">
                            <button type="submit" class="btn">Guardar</button>
                        </div>
                    </form>
                </section>
        </body>