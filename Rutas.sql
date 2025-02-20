CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(15),
    creado_en TIMESTAMP DEFAULT NOW(),
    actualizado_en TIMESTAMP DEFAULT NOW()
);
CREATE TABLE rutas (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    origen VARCHAR(255) NOT NULL,
    destino VARCHAR(255) NOT NULL,
    distancia_km DECIMAL(5,2) NOT NULL,
    tiempo_estimado INTERVAL NOT NULL,
    dificultad VARCHAR(50) CHECK (dificultad IN ('Fácil', 'Media', 'Difícil')),
    creado_en TIMESTAMP DEFAULT NOW(),
    actualizado_en TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
SELECT * FROM usuarios;
SELECT * FROM rutas;
