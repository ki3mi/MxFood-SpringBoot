-- ===========================
-- TABLA: categoria
-- ===========================
CREATE TABLE categoria (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(100) NOT NULL UNIQUE,
  Descripcion TEXT,
  Estado ENUM('Activo', 'Inactivo') NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- ===========================
-- TABLA: producto
-- ===========================
CREATE TABLE producto (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(100) NOT NULL,
  Descripcion TEXT,
  Precio DECIMAL(10,2) NOT NULL,
  Estado ENUM('Disponible','Agotado','Inactivo') NOT NULL DEFAULT 'Disponible',
  Categoria_Id INT NOT NULL,
  CONSTRAINT fk_producto_categoria FOREIGN KEY (Categoria_Id) 
    REFERENCES categoria(Id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  INDEX (Categoria_Id)
) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- ===========================
-- TABLA: usuario
-- ===========================
CREATE TABLE usuario (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(255) NOT NULL,
  Contrasena VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL UNIQUE,
  Telefono VARCHAR(20),
  DNI VARCHAR(20) NOT NULL UNIQUE,
  Rol ENUM('Administrador','Vendedor','Cliente') NOT NULL DEFAULT 'Vendedor',
  Estado ENUM('Activo','Inactivo') NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- ===========================
-- TABLA: venta
-- ===========================
CREATE TABLE venta (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Tipo ENUM('Efectivo','Tarjeta','Transferencia','Yape/Plin') NOT NULL,
  Fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Estado ENUM('Completada','Cancelada','Pendiente','En Delivery','Recojo en Tienda') 
    NOT NULL DEFAULT 'Completada',
  Total DECIMAL(10,2) NOT NULL,
  Usuario_Id INT NOT NULL,
  CONSTRAINT fk_venta_usuario FOREIGN KEY (Usuario_Id) 
    REFERENCES usuario(Id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  INDEX (Usuario_Id)
) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- ===========================
-- TABLA: detalle_venta
-- ===========================
CREATE TABLE detalle_venta (
  Venta_Id INT NOT NULL,
  Producto_Id INT NOT NULL,
  Cantidad INT NOT NULL,
  Subtotal DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (Venta_Id, Producto_Id),
  CONSTRAINT fk_detalle_venta FOREIGN KEY (Venta_Id) 
    REFERENCES venta(Id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_detalle_producto FOREIGN KEY (Producto_Id) 
    REFERENCES producto(Id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  INDEX (Producto_Id)
) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;
