CREATE DATABASE bd_parcial2;
USE bd_parcial2;

   CREATE TABLE login (

	 id_login INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
     usuario VARCHAR(150),
     contrasena VARCHAR (100)
);
INSERT INTO login (usuario, contrasena)
VALUES ('alejandra', 'alelele05'),
       ('patricia', 'patitasss123');
       
   CREATE TABLE aseguradora (

   id_aseguradora INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
   nombre VARCHAR(100)
    
);
    INSERT INTO aseguradora (nombre)
    VALUES('ASSA'),
           ('ANCON'),
           ('ASSA'),
           ('CONANCE'),
           ('PARTICULAR'),
           ('INTEROCEANICA'),
           ('ANCON');


CREATE TABLE abogado (

	id_abogado INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR (100),
    telefono VARCHAR (60),
    cedula VARCHAR (150),
    correo VARCHAR (200)

    
);
INSERT INTO abogado (nombre, apellido, telefono, cedula, correo)
VALUES ('Anton', 'Trejos', '6578-890', '9-876-3456', 'antojos@gmail.com'),
('Alaiyah', 'Palma', '613-0613', '9-556-4821', 'apalma@hotmail.com'),
('Sofia', 'Valdes', '6601-5670', '8-123-5012', 'sofval05@gmail.com'),
('Roberto', 'Diaz', '6464-8989', '5-456-4321', 'rodi111@gmail.com'),
('Alfonso', 'Dominguez', '690-7654', '9-1231-567', 'adominguez@gmail.com'),
('Luis', 'Maldonado', '690-33333', '9-678-1502', 'Lumaldonado@gmail.com');

UPDATE abogado
SET correo ='vals09091@gmail.com' 
WHERE nombre = 'Sofia' AND apellido = 'Valdes';



CREATE TABLE tipo_de_caso (

	id_tipo_de_caso INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR (200)
    
 
);
INSERT INTO tipo_de_caso (nombre)
VALUES ('penal'),
       ('civil');
      

CREATE TABLE expedientes (

	id_expediente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre_asegurado VARCHAR (200),
    apellido_asegurado VARCHAR (100),
    correo VARCHAR (200),
    juzgado VARCHAR (60),
    numero_de_caso VARCHAR(80),
    fecha_de_inicio DATE,
    fecha_de_fin DATE,
    id_aseguradora INT,
    id_tipo_de_caso INT,
    id_abogado INT,
    
    
    FOREIGN KEY (id_aseguradora) REFERENCES aseguradora(id_aseguradora),
    FOREIGN KEY (id_tipo_de_caso) REFERENCES tipo_de_caso(id_tipo_de_caso),
    FOREIGN KEY (id_abogado) REFERENCES abogado(id_abogado)
);
    
INSERT INTO expedientes (nombre_asegurado, apellido_asegurado, correo, juzgado, numero_de_caso, fecha_de_inicio, fecha_de_fin, id_aseguradora, id_abogado, id_tipo_de_caso)
VALUES ('Anthony', 'Trejos', 'Atrejos23@gmail.com', 'juzgado 5to', '5667801', '2023-04-13', '2025-08-20', 1, 3, 1 ),
       ('Luis','Molina', 'Lumois@gmail.com', 'juzgado 4to', '5678991', '2022-04-25', '2024-01-15', 2, 4, 2 ),
       ('Katherine','Kent', 'KayKay21@gmail.com', 'juzgado 5to', '5876545', '2024-09-30', '2025-03-20', 1, 1, 2 ),
       ('Martin','Alvarado', 'Malva2@gmail.com', 'juzgado 1ro', '5123456', '2020-06-30', '2022-03-05', 4, 2, 1 ),
       ('Joel','Arauz Rodriguez', 'Jrodriguez@gmail.com', 'juzgado 3to', '50987654', '2023-04-05', '2024-02-25', 5, 1, 2 ),
       ('Michelle','Vega', 'Michellev@gmail.com', 'Alcaldia de Panama', '54567891', '2022-10-01', '2024-07-28', 6, 2, 1 ),
       ('Candice','Henry', 'CandiceHenry@gmail.com', 'Chitre', '12348765', '2024-06-13', '2025-07-01', 2, 3, 2 );
