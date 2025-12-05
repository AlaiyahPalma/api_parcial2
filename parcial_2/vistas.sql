CREATE VIEW vista_abogado AS SELECT a.nombre, a.apellido, a.telefono, a.cedula, a.correo
FROM abogado a;
SELECT * FROM vista_abogado;

CREATE VIEW vista_aseguradora AS SELECT ase.nombre
FROM aseguradora ase;
SELECT * FROM vista_aseguradora;

CREATE VIEW vista_tipo_de_caso AS SELECT tdc.nombre
FROM tipo_de_caso tdc;
SELECT * FROM vista_tipo_de_caso;

CREATE VIEW vista_expedientes AS SELECT e.nombre_asegurado, e.apellido_asegurado, e.correo, e.juzgado, e.numero_de_caso, a.nombre AS nombre_del_abogado, a.apellido AS apellido_del_abogado, ase.nombre AS nombre_de_aseguradora, tdc.nombre AS nombre_tipo_de_caso
FROM expedientes e
JOIN abogado a ON e.id_abogado = a.id_abogado
JOIN aseguradora ase ON e.id_aseguradora = ase.id_aseguradora
JOIN tipo_de_caso tdc ON e.id_tipo_de_caso = tdc.id_tipo_de_caso;



SELECT * FROM vista_expedientes;
