/*----SCRIPT DE INGRESOS DE DATOS A LAS TABLAS----*/

INSERT INTO public.provincia(
	id_provincia, nom_provincia)VALUES
	(1, 'Manabi'),
	(2, 'Pichincha'),
	(3, 'Santa Elena');
	
	
INSERT INTO public.cuidad(
	id_ciudad, nom_cuidad)VALUES 
	(1, 'Manta'),
	(2, 'Montecristi'),
	(3, 'Quito'),
	(4, 'Cayambe'),
	(5, 'Los Banco'),
	(6, 'Salinas');
	
	
INSERT INTO public.sector(
	id_sector, nom_sector)VALUES 
	(1, 'Barrio Santa Martha'),
	(2, 'Cuna de Alfaro'),
	(3, 'Santa Barbara'),
	(4, 'Ayora'),
	(5, 'Mindo'),
	(6, 'Santa Rosa');
	
	
INSERT INTO public.ubicacion(
	id_ubi, id_sector, id_provincia, id_ciudad)VALUES 
	(1, 1, 1, 1),
	(2, 3, 2, 3),
	(3, 6, 3, 6);
	
	
INSERT INTO public.tipo_empleado(
	id_tipo_emp, tipo_emp)VALUES 
	(1, 'Administrativo'),
	(2, 'Tecnico');
	
	
INSERT INTO public.tipo_servicio(
	id_tipo_serv, nom_tipo_serv) VALUES 
	(1, 'Instalacion'),
	(2, 'Mantenimiento'),
	(3, 'Medicion');
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.empleado(
	id_emp, id_tipo_emp, cedula_emp, nombre_emp, apellido_emp, email_emp, fecha_nac_emp, tipo_sangre_emp, direccion_emp)VALUES 
	(1, 1, 1316069895, 'Diego Andres', 'Flores Zambrano', 'diego@gmail.com', '16/03/2001', 'B+', 'Barrio santa martha calle 10 av 36'),
	(2, 1, 1305215887, 'Karla Isabella', 'Bernadi Cedeño', 'karla@gmail.com', '10/08/2001', 'A+', 'Barrio La Encenadita'),
	(3, 2, 1320569847, 'Anthony Javier', 'Palacios Bello', 'anthony@gmail.com', '06/05/2001', 'O-', 'Barrio 20 de mayo'),
	(4, 2, 1365212594, 'Welinton Alexander', 'Guerro Zamora', 'mocha@gmail.com', '31/12/2001', 'A+', 'Barrio Costa azul calle principal'),
	(5, 2, 1352312546, 'Cristhopher Alberto', 'Alcivar Briones', 'alcivar@gmail.com', '15/05/2001', 'A+', 'Barrio La pradera calle principal');
	

SET DATESTYLE TO 'European';
INSERT INTO public.cliente(
	id_cliente, id_ubi, cedula_cliente, nombre_cliente_, apellido_cliente, email_cliente, fecha_naci_cliente, direc_cliente)VALUES 
	(1, 1, 1304442444, 'Bruno Ian', 'Flores Cedeño', 'bruno@gmail.com', '15/10/1990', 'Barrio Santa Martha calle 11 av 36'),
	(2, 2, 0958844485, 'Jarod Elian', 'Arias Garcia', 'jarod@gmail.com', '20/11/1989', 'Santa Barbara Pasaje del niño'),
	(3, 3, 1512055423, 'Melany Nicol', 'Mora Cedeño', 'mora@gmail.com', '15/04/1980', 'Santa Rosa calle 30 de mayo');
		
		
INSERT INTO public.tipo_facturacion(
	id_tipo_fac, nombre_tipo_fac)VALUES 
	(1, 'Discapacidad'),
	(2, 'Residencial'),
	(3, 'Empresarial');
	
	
INSERT INTO public.tipo_solicitud(
	id_tipo_soli, nom_tipo_soli)VALUES 
	(1, 'Instalacion'),
	(2, 'Mantenimiento');
	
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.contrato(
	id_contr, id_tipo_fac, id_emp, id_cliente, fch_contr)VALUES 
	(1, 1, 1, 1, '15/02/2021'),
	(2, 2, 1, 2, '16/04/2021'),
	(3, 3, 2, 3, '19/06/2021');


alter table servicio alter column costo_tipo_serv set data type real;
INSERT INTO public.servicio(
	id_serv, id_emp, id_tipo_fac, id_tipo_serv, costo_tipo_serv) VALUES 
	(1, 3, 1, 1, 24.99),
	(2, 4, 1, 2, 14.99),
	(3, 5, 1, 3, 1.99),
	(4, 3, 2, 1, 34.99),
	(5, 4, 2, 2, 24.99),
	(6, 5, 2, 3, 2.99),
	(7, 3, 3, 1, 74.99),
	(8, 4, 3, 2, 44.99),
	(9, 5, 3, 3, 4.99);
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.bitacora_intalacion(
	id_bitacora, id_serv, id_ubi, fecha_bitacora, dinero_consumido)VALUES 
	(1, 1, 1, '17/02/2021', 350.85),
	(2, 4, 2, '18/04/2021', 465.39),
	(3, 7, 3, '21/06/2021', 960.54),
	(4, 2, 1, '15/06/2021', 20.85);
	
SET DATESTYLE TO 'European';
INSERT INTO public.facturacion(
	id_fac, id_ubi, id_serv, id_emp, id_cliente, fch_fac)VALUES 
	(1, 1, 1, 2, 1, '28/02/2021'),
	(2, 2, 4, 2, 2, '30/04/2021'),
	(3, 3, 7, 1, 3, '30/06/2021'),
	(4, 1, 1, 2, 1, '28/02/2021'),
	(5, 2, 2, 1, 1, '15/05/2021'),
	(6, 2, 8, 3, 3, '15/07/2021'),
	(7, 2, 8, 3, 3, '15/08/2021');
	
SET DATESTYLE TO 'European';
INSERT INTO public.solicitud(
	id_soli, id_ubi, id_tipo_soli, id_cliente, fecha_inicio_solicitud)VALUES 
	(1, 1, 1, 1, '14/02/2021'),
	(2, 2, 1, 2, '15/07/2021'),
	(3, 3, 1, 3, '18/06/2021'),
	(4, 3, 2, 3, '15/10/2021'),
	(5, 3, 2, 1, '14/06/2021');
	
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.convenio(
	id_conv, id_cliente, id_emp, id_contr, nom_est_conv, fecha_conv)VALUES 
	(1, 2, 1, 2, 'Conv. Vigente', '30/05/2021'),
	(2, 2, 1, 2, 'Conv. Vigente', '30/06/2021'),
	(3, 1, 2, 1, 'Conv. Cancelado', '30/07/2021');