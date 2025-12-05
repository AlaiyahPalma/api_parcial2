USE bd_parcial2;

SELECT * FROM expedientes;
UPDATE expedientes
SET correo = 'AnthonyT@gmail.com'
WHERE id_expediente = 1;

SELECT * FROM abogado;
UPDATE abogado
SET correo = 'Analu12@gmail.com', nombre = 'Ana Lucia', apellido = 'Rodriguez'
WHERE id_abogado = 4;

SELECT * FROM aseguradora;
UPDATE aseguradora
SET nombre = 'ATLAS'
WHERE id_aseguradora = 7


