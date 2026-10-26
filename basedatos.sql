-- 1. Crear la base de datos
CREATE DATABASE IF NOT EXISTS tymons_family_diner;
USE tymons_family_diner;

-- 2. TABLA 1: Categorías (Requisito de tablas múltiples)
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion_zona VARCHAR(150) NOT NULL
);

-- 3. TABLA 2: Usuarios y Productos/Reservas (Relacionada con categorías)
CREATE TABLE usuarios_productos (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL,
    item_seleccionado VARCHAR(150) NOT NULL,
    precio_cop DECIMAL(12,2) NOT NULL,
    id_categoria INT,
    fecha_operacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- 4. Inserción de datos iniciales de prueba (Evidencia para el profesor)
INSERT INTO categorias (nombre_categoria, descripcion_zona) VALUES 
('Gastronomía y Pizzería', 'Comedor Principal - Escenario de Tymon'),
('Salas de Escape y Show', 'Subsuelo - Zona Mecatrónica y Maglocks');

INSERT INTO usuarios_productos (nombre_usuario, correo_electronico, item_seleccionado, precio_cop, id_categoria) VALUES 
('Bryan Romero', 'bryan.romero@cun.edu.co', 'Pizza Suprema de Tymon', 48000.00, 1),
('Bryan Romero', 'bryan.romero@cun.edu.co', 'Acceso Escape Room Nocturno', 120000.00, 2);
