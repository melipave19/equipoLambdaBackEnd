-- Pais --
insert into pais values (1, 1, 'Argentina');
insert into pais values (2, 1, 'Chile');
insert into pais values (3, 1, 'Brasil');
insert into pais values (4, 1, 'Uruguay');
insert into pais values (5, 1, 'Paraguay');
insert into pais values (6, 1, 'Bolivia');
insert into pais values (7, 1, 'EEUU');

-- Provincia --
insert into provincia values (1, 1, 'Córdoba', 1);
insert into provincia values (2, 1, 'Buenos Aires', 1);
insert into provincia values (3, 1, 'Santa Fe', 1);
insert into provincia values (4, 1, 'Tucuman', 1);
insert into provincia values (5, 1, 'Mendoza', 1);
insert into provincia values (6, 1, 'Entre Rios', 1);

-- Localidad --
insert into localidad values (1, 1, 'Córdoba',1);
insert into localidad values (2, 1, 'Rio Cuarto',1);
insert into localidad values (3, 1, 'San Francisco',1);
insert into localidad values (4, 1, 'Embalse',1);
insert into localidad values (5, 1, 'Calamuchita',1);
insert into localidad values (6, 1, 'Villa El Totoral',1);

-- Barrio --
insert into barrio values (1, 1, 'Centro', 1);
insert into barrio values (2, 1, 'Nueva Córdoba', 1);
insert into barrio values (3, 1, 'Cerro de las Rosas', 1);
insert into barrio values (4, 1, 'Jardin', 1);
insert into barrio values (5, 1, 'San Vicente', 1);
insert into barrio values (6, 1, 'Alberdi', 1);

-- Tipo Telefono --
insert into tipotelefono values (1, 'Fijo',' ');
insert into tipotelefono values (2, 'Celular', ' ');
insert into tipotelefono values (3, 'Laboral', ' ');



-- Cantidad anios pasante  --
insert into cantidadaniospasante values (1, 'Primer anio universitario', '1er anio');
insert into cantidadaniospasante values (2, 'Segundo anio universitario', '2do anio');
insert into cantidadaniospasante values (3, 'Tercer anio universitario', '3er anio');
insert into cantidadaniospasante values (4, 'Cuarto anio universitario', '4to anio');
insert into cantidadaniospasante values (5, 'Quinto anio universitario', '5to anio');

-- Especialidad --
insert into especialidad values (1, 1, 'Ingeniería en Sistemas');
insert into especialidad values (2, 1, 'Ingeniería Química'); 
insert into especialidad values (3, 1, 'Ingeniería Mecánica');
insert into especialidad values (4, 1, 'Ingeniería Industrial');
insert into especialidad values (5, 1, 'Ingeniería Electrónica');
insert into especialidad values (6, 1, 'Ingeniería Civil');
insert into especialidad values (7, 1, 'Ingeniería Metalúrgica');
insert into especialidad values (8, 1, 'Ingeniería Eléctrica');

-- Estado ARM --
insert into estadoarm values (1, 1, 'Generado');
insert into estadoarm values (2, 1, 'Finalizado');
insert into estadoarm values (3, 1, 'Cancelado');

-- Estado sucursal --
insert into estadosucursal values (1, 1, 'Habilitada');
insert into estadosucursal values (2, 1, 'Deshabilitada');

-- Estado ARM x alumno --
insert into estadoarmxalumno values (1,1,'Pendiente');
insert into estadoarmxalumno values (2,1,'Aceptado');
insert into estadoarmxalumno values (3,1,'Rechazado');

-- Genero --
insert into genero values (1, 1, 'Masculino');
insert into genero values (2, 1, 'Femenino');
insert into genero values (3, 1, 'Otro');


-- Tipo Empresa --
insert into tipoempresa values (1, '', 'Software');
insert into tipoempresa values (2, '', 'Automotriz');
insert into tipoempresa values (3, '', 'Comercial');
insert into tipoempresa values (4, '', 'Empresarial');
insert into tipoempresa values (5, '', 'Salud');
insert into tipoempresa values (6, '', 'Ambiental');

-- Alumno --
insert into alumno values (58496, 'Paola', 'Rodriguez', 1, 'p_rodriguez@hotmail.com',2, 3512464235);
insert into alumno values (71845, 'Jose', 'Ordoñez', 1, 'jordoniez@gmail.com',2, 3512467485);
insert into alumno values (72658, 'Martina', 'Perez', 1, 'marperez@hotmail.com',1, 35142317485);
insert into alumno values (40789, 'Violeta', 'Juarez', 2, 'viole.j@gmail.com',2, 351247496);
insert into alumno values (66885, 'Pedro', 'Mancioni', 3, 'p_mancioni07@hotmail.com',2, 3513416366);
insert into alumno values (55413, 'Ramiro', 'Peralta', 4, 'rami_peralta@hotmail.com',3, 3515541233);
insert into alumno values (72415, 'Martin', 'Molina', 4, 'mmolina@hotmail.com',2, 3513964785);
insert into alumno values (49685, 'Rocio', 'Navarro', 5, 'rochi.navarro@gmail.com',2, 3516454512);
insert into alumno values (57846, 'Marina', 'Sosa', 6, 'mara.sosa78@gmail.com',2, 3517485126);
insert into alumno values (51512, 'Roberto', 'Jimenez', 8, 'jimenez.robert@gmail.com',3, 35155478811);

-- Responsable --
insert into responsable values (90415, 'Marcio', 'Vargas', '2019/02/23');
insert into responsable values (92475, 'Maria', 'Florez', '2019/02/23');
insert into responsable values (80230, 'Ariel', 'Funes', '2020/02/15');
insert into responsable values (81457, 'Florencia', 'Paez', '2017/10/23');

-- Empresa--
insert into empresa values (1, '3284595634', '', '', 'SRL', 1);
insert into empresa values (2, '3215741461', '', '', 'SA', 1);
insert into empresa values (3, '3748112889', '', '', 'SA', 1);
insert into empresa values (4, '7841216464', '', '', 'SRL', 2);
insert into empresa values (5, '3684842154', '', '', 'SRL', 2);
insert into empresa values (6, '3965114487', '', '', 'SRL', 4);

-- Sucursal x empresa --
insert into sucursalesxempresa values (1, 'ESTUDIO GCG SRL', 300, 'estudio.gcg@gmail.com','2020/08/28', 'Desarrollo de Software', '', 45781296, 452963, 'Rivadavia', 1088, 1, 1, 1);
insert into sucursalesxempresa values (2, 'CLARIPHY ARGENTINA SA', 250, 'clariphy@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.clariphysa.com.ar', 58471263, 452963, 'Duarte Quiroz', 145, 2, 1, 1);
insert into sucursalesxempresa values (3, 'PROMINENTE SA', 500, 'prominente.sa@gmail.com','2020/08/28', 'Desarrollo de Software', '', 56239645, 4784963, 'Justiniano Posse', 2541, 4, 3, 1);
insert into sucursalesxempresa values (4, 'BUEN BYTE SAS', 100, 'buen.byte.sas@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.buenbytesas.com', 41529673, 452963, 'San Lorenzo', 50, 2, 4, 1);
insert into sucursalesxempresa values (5, 'DAYCO ARGENTINA SA', 750, 'dayco.arg.sa@gmail.com','2020/08/28', 'Automotriz', '', 55223674, 4142367, 'Marcelo T. de Alvear', 296, 1, 5, 1);
insert into sucursalesxempresa values (6, 'INDUPAS S.R.L.', 400, 'indupas.srl@gmail.com','2020/08/28', 'Industrias Alimentarias', 'www.indupas.net', 53754819, 478451, 'Humberto Primo', 2563, 6, 6, 1);

-- Formulario ARM --
insert into formularioarm values(1, 5, 'ESTUDIANTE INGENIERIA ELECTRONICA O COMPUTACION', 'DRFJL7845', 'N/A', 12, 'sector.rrhh@clariphy.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2020/09/30', '2020/09/30 10:00:00', '2020/09/30 14:00:00', 'Empresa del cliente', 'CONOCIMIENTOS SOBRE SISTEMAS DIGITALES DE COMUNICACIONES CAPACIDAD DE PROGRAMACION EN C, C++ Y PYTHON BUENA CAPACIDAD DE COMUNICACION ORAL Y ESCRITA', 'MANEJO DEL IDIOMA INGLES', 'FEC', 10000, 'PARTICIPAR DE PROYECTOS DE ALTO NIVEL TECNOLOGICO A NIVEL MUNDIAL. TUTORIAS CON EXPERTOS. EXCELENTE ESPACIO Y CONDICIONES DE TRABAJO. ', 3, 3, 1, 2);
insert into formularioarm values(2, 3, 'Pasantía en Calidad y Control de gestión', 'SFGRVFDG45151', 'N/A', 12, 'contactoRRHH@grupoprominente.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2021/02/3', '2020/09/30 10:00:00', '2020/09/30 12:00:00', 'Empresa', 'Microsoft Office', 'Trabajo en equipo - Visión de proceseos - Análisis de información - Ganas de aprender', ' 	Pasante', 14698, 'Lic. trámite - Lic. día de Cumpleanios - Snack saludables - Coffe continuo - Club La Voz - Club Libertad  ', 3, 4, 1, 3);
insert into formularioarm values(3, 2, 'Desarrollo de Software', 'GRTHFBVFDV484', 'N/A', 6, 'selcba@gmail.com', 1, '2 anios', '2020/08/28', '2020/11/1', '2020/09/30 8:00:00', '12:00:00', 'Empresa del cliente', '- HTML5, javascript, jquery, CSS, PHP. - Desarrollo de sitios Web de alto tráfico. - MySQL, querys y PHP. - Symfony, Laravel, Codeingniter ', '- Manejar algún sistema de control de versión (GIT), Bootstrap. - Sólidos conocimientos en knockoutjs, Laravel. ', 'Desarrollador PHP', 16000, 'Participación en diversos proyectos y equipos multidisciplinarios y posibilidad de incorporación de forma efectiva una vez finalizada la pasantía. ', 3, 2, 1, 5);
insert into formularioarm values(4, 1, 'El foco de la posición es la atención telefónica de los clientes, como también la asistencia en sus inconvenientes o dudas técnicas', 'NGHBFV1815', 'N/A', 6, 'rrhh@buenbyte.com', 1, '1 anio', '2020/08/28', '2020/10/15', '2020/09/30 10:00:00', '2020/09/30 14:00:00', 'Empresa del cliente', ' 	AUTOCAD ', ' 	PAQUETE OFFICE', 'Estudiantes avanzados Ing MECANICA ', 11000, 'PREPAGA COMEDOR EN PLANTA ', 3, 1, 1, 6);


-- especialidadxarm --
insert into especialidadxarm values(1,1,1,2);
insert into especialidadxarm values(2,1,1,3);
insert into especialidadxarm values(3,1,2,4);
insert into especialidadxarm values(4,1,3,5);

-- insert into formulario ARM x alumno --
insert into formularioarmxalumno values (1, 1 , 49685, '2020/10/02', null,90415,1,null);
insert into formularioarmxalumno values (2, 2 , 71845, '2020/04/10', null,80230,1,null);
insert into formularioarmxalumno values (3, 3 , 72658, '2020/09/20', '2020/10/02',90415,2,'Sin observaciones.');