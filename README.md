# MxFood - Sistema de Gestión para Restaurante

**MxFood** es una aplicación web desarrollada con **Spring Boot 3** y **Java 17** para la administración de un restaurante de comida mexicana. Proporciona un sistema POS (Point of Sale) completo con gestión de menú, ventas, pedidos a domicilio, usuarios y métricas.

## Tecnologías Utilizadas

| Tecnología | Versión |
|---|---|
| Java | 17 |
| Spring Boot | 3.5.0 |
| Base de datos | MySQL |
| Acceso a datos | Spring JDBC (JdbcTemplate) |
| Vistas | JSP + JSTL + CSS |
| Pool de conexiones | HikariCP |
| Internacionalización | Spring MVC i18n (Español/Inglés) |
| Build | Maven |

## Arquitectura

La aplicación sigue una arquitectura **MVC en capas**:

```
Controladores (@Controller)
      ↓
Servicios (interface + impl) (@Service)
      ↓
DAO / Repositorios (interface + impl) (@Repository)
      ↓
MySQL
```

- **Modelos** (`model/`): POJOs que representan las entidades del dominio (`Category`, `Product`, `User`, `Sale`, `SaleDetail`, `Metrics`).
- **Controladores** (`controller/`): Manejan las peticiones HTTP y retornan vistas JSP.
- **Servicios** (`service/`): Lógica de negocio con interfaces y sus implementaciones.
- **Repositorios** (`repository/impl/`): Acceso a datos mediante `JdbcTemplate` con SQL nativo.

### Autenticación

Sesión basada en `HttpSession` con un `SessionInterceptor` que protege todas las rutas excepto `/login`, `/css/` e `/imag/`. El usuario se almacena en sesión como `userLogged`.

## Funcionalidades

- **Autenticación**: Inicio/cierre de sesión con validación por email y contraseña.
- **Gestión de Categorías**: CRUD completo con desactivación lógica.
- **Gestión de Productos**: CRUD completo, búsqueda por nombre, asociación a categorías.
- **Gestión de Ventas**: Registro de ventas (local o delivery), agregado de productos, cierre de venta y generación de boleta.
- **Pedidos a Domicilio (Delivery)**: Visualización de pedidos pendientes, cambio de estado (Pendiente → En Camino → Completada) e impresión de ticket.
- **Gestión de Usuarios**: CRUD completo del personal del sistema.
- **Métricas y Dashboard**: Ventas mensuales (últimos 6 meses), ventas por categoría, productos vendidos por mes con barras de porcentaje.
- **Catálogo público**: Visualización de productos para clientes.
- **Internacionalización**: Soporte español/inglés vía parámetro `?lang=`.

## Diagrama de Base de Datos

```
categoria (Id, Nombre, Descripcion, Estado)
    ↑
producto (Id, Nombre, Descripcion, Precio, Estado, Categoria_Id)
    ↓
detalle_venta (Id, Venta_Id, Producto_Id, Cantidad, Subtotal)
    ↑
venta (Id, Nombre, Telefono, DNI, Direccion, Tipo, Fecha, Estado, Total, Usuario_Id)
usuario (Id, Nombre, Password, Email, Telefono, DNI, Estado)
```

## Configuración

Archivo `application.properties`:

| Propiedad | Valor |
|---|---|
| Puerto | `8085` |
| Base de datos | `mxfood` (MySQL local) |
| Pool HikariCP | Max 5 conexiones |

Las tablas se crean automáticamente con `schema.sql` y se cargan datos de ejemplo con `data.sql`.

## Cómo Ejecutar

1. Asegúrate de tener MySQL corriendo en `localhost:3306`.
2. Crea la base de datos `mxfood`.
3. Ejecuta con Maven:

```bash
./mvnw spring-boot:run
```

4. Abre `http://localhost:8085/` en tu navegador.

Las credenciales de los usuarios de ejemplo están en `src/main/resources/data.sql`.

## Estructura del Proyecto

```
src/main/java/com/example/demo/
├── DemoApplication.java
├── ServletInitializer.java
├── WebConfig.java
├── SessionInterceptor.java
├── controller/     → Controladores MVC
├── service/
│   ├── impl/       → Implementaciones de servicios
├── repository/
│   ├── impl/       → Implementaciones DAO con JdbcTemplate
└── model/          → POJOs de dominio

src/main/resources/
├── application.properties
├── schema.sql          → DDL
├── data.sql            → Datos de semilla
├── messages_es.properties
└── messages_en.properties

src/main/webapp/
├── WEB-INF/views/      → Vistas JSP
├── css/                → Hojas de estilo
└── imag/               → Imágenes
```

## Notas Técnicas

- **No se usa JPA/Hibernate** de forma activa a pesar de estar configurado en properties. Todo el acceso a datos es mediante `JdbcTemplate`.
- Las contraseñas se almacenan en texto plano (sin hashing).
- El archivo `pom.xml` contiene una dependencia `spring:2.5.6.SEC03` heredada que podría eliminarse.
- Solo existe el test por defecto de carga de contexto (`DemoApplicationTests`).
