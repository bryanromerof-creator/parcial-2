CREATE DATABASE tymons_family_diner;
USE tymons_family_diner;

-- TABLA 1: Categorías del Local (Pizzería, Escape Room, Show Animatrónico)
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL,
    ubicacion_zona VARCHAR(100) NOT NULL
);

-- TABLA 2: Productos y Experiencias de Tymon's Family Diner
CREATE TABLE productos_experiencias (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    nombre_item VARCHAR(150) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Registro de datos reales del proyecto
INSERT INTO categorias (nombre_categoria, ubicacion_zona) VALUES 
('Menú Pizzería', 'Comedor Principal - Escenario de Tymon'),
('Salas de Escape', 'Subsuelo - Zona Mecatrónica');

INSERT INTO productos_experiencias (nombre_item, descripcion, precio, id_categoria) VALUES 
('Pizza Suprema de Tymon', 'Pizza familiar de pepperoni y bordes rellenos de queso', 48000.00, 1),
('Pase VIP Show de Tymon el León', 'Mesa en primera fila frente al escenario animatrónico', 25000.00, 1),
('Entrada Escape Room: Turno de Noche', 'Acceso para grupo de 4 personas a la sala de escape', 120000.00, 2);
