USE 'tarea2';


-- insert de Puestos
INSERT INTO Puestos (nombre, salarioxhora) 
VALUES 
('Cajero', 11), 
('Camarero', 10), 
('Cuidador', 13), 
('Conductor', 15), 
('Asistente', 11), 
('Recepcionista', 12), 
('Fontanero', 13), 
('Niñera', 12), 
('Conserje', 11), 
('Albañil', 10);


-- insert de TiposEvento
INSERT INTO TiposEvento (Id, Nombre)
VALUES 
(1, 'Login Exitoso'),
(2, 'Login No Exitoso'),
(3, 'Login deshabilitado'),
(4, 'Logout'),
(5, 'Insercion no exitosa'),
(6, 'Insercion exitosa'),
(7, 'Update no exitoso'),
(8, 'Update exitoso'),
(9, 'Intento de borrado'),
(10, 'Borrado exitoso'),
(11, 'Consulta con filtro de nombre'),
(12, 'Consulta con filtro de cedula'),
(13, 'Intento de insertar movimiento'),
(14, 'Insertar movimiento exitoso');


-- insert de TiposMovimientos
INSERT INTO TiposMovimientos (Id, Nombre, TipoAccion)
VALUES 
(1, 'Cumplir mes', 'Credito'),
(2, 'Bono vacacional', 'Credito'),
(3, 'Reversion Debito', 'Credito'),
(4, 'Disfrute de vacaciones', 'Debito'),
(5, 'Venta de vacaciones', 'Debito'),
(6, 'Reversion de Credito', 'Debito');


-- insert de Empleados
INSERT INTO Empleados (Puesto, DocumentoIdentidad, Nombre, FechaContratacion)
VALUES
('Camarero', 6993943, 'Kaitlyn Jensen', '2017-12-07'),
('Albañil', 1896802, 'Robert Buchanan', '2020-09-20'),
('Cajero', 5095109, 'Christina Ward', '2015-09-13'),
('Fontanero', 8403646, 'Bradley Wright', '2020-01-27'),
('Conserje', 6019592, 'Robert Singh', '2017-02-01'),
('Asistente', 4510358, 'Ryan Mitchell', '2018-06-08'),
('Asistente', 7517662, 'Candace Fox', '2013-12-17'),
('Asistente', 8326328, 'Allison Murillo', '2020-04-19'),
('Cuidador', 2161775, 'Jessica Murphy', '2017-04-12'),
('Fontanero', 2918773, 'Nancy Newton PhD', '2016-11-22');


-- insert de Usuarios
INSERT INTO Usuarios (Id, Nombre, Contraseña)
VALUES
(1, 'UsuarioScripts', 'UsuarioScripts'),
(1, 'mgarrison', ')*2LnSr^lk'),
(2, 'jgonzalez', '3YSI0Hti&I'),
(3, 'zkelly', 'X4US4aLam@'),
(4, 'andersondeborah', '732F34xo%S'),
(5, 'hardingmicheal', 'himB9Dzd%_');


-- insert de Movimientos
INSERT INTO Movimientos (DocumentoIdentidad, TipoMovimiento, Fecha, Monto, PostByUser, PostInIP, PostTime)
VALUES
(7517662, 'Venta de vacaciones', '2024-01-18', 2, 'hardingmicheal', '42.142.119.153', '2024-01-18 18:47:14'),
(6993943, 'Bono vacacional', '2023-10-31', 1, 'mgarrison', '156.92.82.57', '2023-10-31 12:43:18'),
(8326328, 'Venta de vacaciones', '2023-11-22', 7, 'andersondeborah', '218.213.110.232', '2023-11-22 00:23:53'),
(4510358, 'Reversion de Credito', '2023-07-03', 3, 'hardingmicheal', '143.42.131.166', '2023-07-03 17:07:39'),
(8403646, 'Reversion de Credito', '2023-12-07', 8, 'zkelly', '155.44.100.105', '2023-12-07 15:44:30'),
(8326328, 'Venta de vacaciones', '2023-11-26', 10, 'hardingmicheal', '141.163.255.56', '2023-11-26 09:33:41'),
(6993943, 'Disfrute de vacaciones', '2023-11-20', 6, 'hardingmicheal', '4.176.52.1', '2023-11-20 23:31:41'),
(2918773, 'Disfrute de vacaciones', '2023-10-30', 10, 'zkelly', '220.164.108.231', '2023-10-30 03:55:57'),
(2161775, 'Reversion de Debito', '2023-06-13', 2, 'hardingmicheal', '135.223.57.22', '2023-06-13 13:28:39'),
(8403646, 'Bono vacacional', '2024-01-01', 6, 'zkelly', '150.250.94.62', '2024-01-01 05:17:10'),
(2918773, 'Venta de vacaciones', '2023-07-12', 6, 'hardingmicheal', '218.191.123.15', '2023-07-12 09:10:16'),
(5095109, 'Reversion de Credito', '2023-12-27', 14, 'hardingmicheal', '136.103.23.170', '2023-12-27 12:59:03'),
(6993943, 'Venta de vacaciones', '2023-04-08', 1, 'jgonzalez', '158.48.100.86', '2023-04-08 01:24:38'),
(8403646, 'Bono vacacional', '2023-08-25', 8, 'jgonzalez', '204.0.219.231', '2023-08-25 16:24:07'),
(5095109, 'Bono vacacional', '2024-03-07', 7, 'andersondeborah', '208.0.4.33', '2024-03-07 08:19:28');


-- insert de Error
INSERT INTO Error (Codigo, Descripcion)
VALUES
(50001, 'Username no existe'),
(50002, 'Password no existe'),
(50003, 'Login deshabilitado'),
(50004, 'Empleado con ValorDocumentoIdentidad ya existe en inserción'),
(50005, 'Empleado con mismo nombre ya existe en inserción'),
(50006, 'Empleado con ValorDocumentoIdentidad ya existe en actualizacion'),
(50007, 'Empleado con mismo nombre ya existe en actualización'),
(50008, 'Error de base de datos'),
(50009, 'Nombre de empleado no alfabético'),
(50010, 'Valor de documento de identidad no alfabético'),
(50011, 'Monto del movimiento rechazado pues si se aplicar el saldo seria negativo.');


