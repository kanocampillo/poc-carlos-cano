CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL
);

CREATE TABLE clientes (
    id integer PRIMARY KEY,
    tipo_id VARCHAR(15) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO clientes (id,	tipo_id,	nombre , email)
VALUES ('26514287' , 'José Rojas',	'Cédula',	'josero@poc.com.co');


INSERT INTO productos (nombre_producto,	marca,	color, categoria)
VALUES
('Zapatos',	'Brahama',	'Café',		'Ropa /calzado'),
('Iphone',	'Apple',	'Negro',	'Computadores/celulares'),
('Sofá',	'Ikea',		'Blanco',	'Mobiliario');
