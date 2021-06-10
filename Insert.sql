--INSERTA PERSONA
INSERT INTO Persona VALUES ('JAS5FD3216SDF', 'Pedro Pablo Ortiz Ayub', 'M', '452 Aron Well. Los Cabos', '6245605897');
/
INSERT INTO Persona VALUES ('JV21A9DA98518', 'Luis Carlos Reyna Fuentes', 'M', '009 Lehner Terrace. Los Cabos', '699755977');
/
INSERT INTO Persona VALUES ('DA1D6F5V149A8', 'Carlos Mireles Martinez Torres', 'M', 'Av. Marines Col. Los Cabos', '8293629396');
/
INSERT INTO Persona VALUES ('JADS1VA968V1A', 'Jose Alonso Gomez Alanis', 'M', '703 Gleason Well. Los Cabos', '6608230239');
/
INSERT INTO Persona VALUES ('E1A6D85197A1W', 'Verania Arzate Garza', 'F', '8324 Grady Lodge. Los Cabos', '6670018456');
/
INSERT INTO Persona VALUES ('J16A987V1AW6R', 'Monica Flores Abrego', 'F', '09143 Kris Causeway. Los Cabos', '8268839214');
/
INSERT INTO Persona VALUES ('D465ASD1FEW98', 'Otoniel Perez Coop', 'M', '881 Wilford Str. Los Cabos', '8397027057');
/
INSERT INTO Persona VALUES ('J19AW5E19SWDA', 'Luis Marcos Posada Gonzalez', 'M', '59843 Drives Str. Los Cabos', '8967786090');
/
INSERT INTO Persona VALUES ('D463JF4JF1MJ3', 'Victor Manuel Morales Lozano', 'M', '0566 Al Track. Los Cabos', '8437730194');
/
INSERT INTO Persona VALUES ('DI16UI491SRTY', 'Zaret Gil Garcia', 'F', '3913 Aidan Locks. Los Cabos', '8363225399');
/
INSERT INTO Persona VALUES ('J1TGW6RT945W9', 'Diana Alejandra Garcia Lagos', 'F', '8047 Earline Glens. Los Cabos', '8890704664');
/
INSERT INTO Persona VALUES ('J51E6FRE874FA', 'Gabriela Lagunas Valdes', 'F', '408 Julianne Camp. Los Cabos', '682411832');
/
INSERT INTO Persona VALUES ('J485FA63E587F', 'Arturo Lopez Coss', 'M', '90298 Carey Ridges. Los Cabos', '7892484368');
/
INSERT INTO Persona VALUES ('J46SD1AFA876E', 'Angelica Almaguer Dominguez', 'F', '9200 Mayer Mountain. Los Cabos', '6580714954');
/
INSERT INTO Persona VALUES ('J46DS54A1687F', 'Giancarlo Flores Maldonado', 'M', '9455 Metz Shoals. Los Cabos', '7182893462');
/

--INSERT iniciales a la tabla original para asegurar el disjoint
--INSERTA DUEÑO
INSERT INTO dueno_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'DA1D6F5V149A8'),
    (SELECT nombre FROM Persona WHERE rfc = 'DA1D6F5V149A8'),
    (SELECT sexo FROM Persona WHERE rfc = 'DA1D6F5V149A8'),
    (SELECT direccion FROM Persona WHERE rfc = 'DA1D6F5V149A8'),
    (SELECT telefono FROM Persona WHERE rfc = 'DA1D6F5V149A8'),
    NULL, 
    5528.65
);
/

--INSERTA ENTRENADOR
INSERT INTO Entrenador VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'E1A6D85197A1W'),
    (SELECT nombre FROM Persona WHERE rfc = 'E1A6D85197A1W'),
    (SELECT sexo FROM Persona WHERE rfc = 'E1A6D85197A1W'),
    (SELECT direccion FROM Persona WHERE rfc = 'E1A6D85197A1W'),
    (SELECT telefono FROM Persona WHERE rfc = 'E1A6D85197A1W'),
    7, 
    t_e('tiro', 'de campo', 'carreras planas', NULL),
    6281.25,
    NULL
);
/

--INSERTA JOCKEY
INSERT INTO Jockey VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'JAS5FD3216SDF'),
    (SELECT nombre FROM Persona WHERE rfc = 'JAS5FD3216SDF'),
    (SELECT sexo FROM Persona WHERE rfc = 'JAS5FD3216SDF'),
    (SELECT direccion FROM Persona WHERE rfc = 'JAS5FD3216SDF'),
    (SELECT telefono FROM Persona WHERE rfc = 'JAS5FD3216SDF'),
    1.80,
    76.3,
    34,
    2983.25,
    NULL
);
/

--INSERTA dueno_v
INSERT INTO dueno_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'D465ASD1FEW98'),
    (SELECT nombre FROM Persona WHERE rfc = 'D465ASD1FEW98'),
    (SELECT sexo FROM Persona WHERE rfc = 'D465ASD1FEW98'),
    (SELECT direccion FROM Persona WHERE rfc = 'D465ASD1FEW98'),
    (SELECT telefono FROM Persona WHERE rfc = 'D465ASD1FEW98'),
    NULL, 
    4265.75
);
/

INSERT INTO dueno_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'D463JF4JF1MJ3'),
    (SELECT nombre FROM Persona WHERE rfc = 'D463JF4JF1MJ3'),
    (SELECT sexo FROM Persona WHERE rfc = 'D463JF4JF1MJ3'),
    (SELECT direccion FROM Persona WHERE rfc = 'D463JF4JF1MJ3'),
    (SELECT telefono FROM Persona WHERE rfc = 'D463JF4JF1MJ3'),
    NULL, 
    4621.24
);
/


INSERT INTO dueno_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'DI16UI491SRTY'),
    (SELECT nombre FROM Persona WHERE rfc = 'DI16UI491SRTY'),
    (SELECT sexo FROM Persona WHERE rfc = 'DI16UI491SRTY'),
    (SELECT direccion FROM Persona WHERE rfc = 'DI16UI491SRTY'),
    (SELECT telefono FROM Persona WHERE rfc = 'DI16UI491SRTY'),
    NULL, 
    3484.54
);
/

--INSERTA JOCKEY
INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'JV21A9DA98518'),
    (SELECT nombre FROM Persona WHERE rfc = 'JV21A9DA98518'),
    (SELECT sexo FROM Persona WHERE rfc = 'JV21A9DA98518'),
    (SELECT direccion FROM Persona WHERE rfc = 'JV21A9DA98518'),
    (SELECT telefono FROM Persona WHERE rfc = 'JV21A9DA98518'),
    1.70,
    60.5,
    27,
    1354.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'JADS1VA968V1A'),
    (SELECT nombre FROM Persona WHERE rfc = 'JADS1VA968V1A'),
    (SELECT sexo FROM Persona WHERE rfc = 'JADS1VA968V1A'),
    (SELECT direccion FROM Persona WHERE rfc = 'JADS1VA968V1A'),
    (SELECT telefono FROM Persona WHERE rfc = 'JADS1VA968V1A'),
    1.72,
    71.5,
    25,
    5615.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J16A987V1AW6R'),
    (SELECT nombre FROM Persona WHERE rfc = 'J16A987V1AW6R'),
    (SELECT sexo FROM Persona WHERE rfc = 'J16A987V1AW6R'),
    (SELECT direccion FROM Persona WHERE rfc = 'J16A987V1AW6R'),
    (SELECT telefono FROM Persona WHERE rfc = 'J16A987V1AW6R'),
    1.75,
    64.5,
    28,
    4264.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J19AW5E19SWDA'),
    (SELECT nombre FROM Persona WHERE rfc = 'J19AW5E19SWDA'),
    (SELECT sexo FROM Persona WHERE rfc = 'J19AW5E19SWDA'),
    (SELECT direccion FROM Persona WHERE rfc = 'J19AW5E19SWDA'),
    (SELECT telefono FROM Persona WHERE rfc = 'J19AW5E19SWDA'),
    1.95,
    75.5,
    31,
    6425.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J1TGW6RT945W9'),
    (SELECT nombre FROM Persona WHERE rfc = 'J1TGW6RT945W9'),
    (SELECT sexo FROM Persona WHERE rfc = 'J1TGW6RT945W9'),
    (SELECT direccion FROM Persona WHERE rfc = 'J1TGW6RT945W9'),
    (SELECT telefono FROM Persona WHERE rfc = 'J1TGW6RT945W9'),
    2,
    69.1,
    23,
    4875.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J51E6FRE874FA'),
    (SELECT nombre FROM Persona WHERE rfc = 'J51E6FRE874FA'),
    (SELECT sexo FROM Persona WHERE rfc = 'J51E6FRE874FA'),
    (SELECT direccion FROM Persona WHERE rfc = 'J51E6FRE874FA'),
    (SELECT telefono FROM Persona WHERE rfc = 'J51E6FRE874FA'),
    1.59,
    80.1,
    33,
    7168.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J485FA63E587F'),
    (SELECT nombre FROM Persona WHERE rfc = 'J485FA63E587F'),
    (SELECT sexo FROM Persona WHERE rfc = 'J485FA63E587F'),
    (SELECT direccion FROM Persona WHERE rfc = 'J485FA63E587F'),
    (SELECT telefono FROM Persona WHERE rfc = 'J485FA63E587F'),
    1.67,
    65.1,
    37,
    6843.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J46SD1AFA876E'),
    (SELECT nombre FROM Persona WHERE rfc = 'J46SD1AFA876E'),
    (SELECT sexo FROM Persona WHERE rfc = 'J46SD1AFA876E'),
    (SELECT direccion FROM Persona WHERE rfc = 'J46SD1AFA876E'),
    (SELECT telefono FROM Persona WHERE rfc = 'J46SD1AFA876E'),
    1.77,
    75.1,
    29,
    8452.25,
    NULL
);
/

INSERT INTO jockey_v VALUES (
    (SELECT rfc FROM Persona WHERE rfc = 'J46DS54A1687F'),
    (SELECT nombre FROM Persona WHERE rfc = 'J46DS54A1687F'),
    (SELECT sexo FROM Persona WHERE rfc = 'J46DS54A1687F'),
    (SELECT direccion FROM Persona WHERE rfc = 'J46DS54A1687F'),
    (SELECT telefono FROM Persona WHERE rfc = 'J46DS54A1687F'),
    1.91,
    72.1,
    26,
    7165.25,
    NULL
);
/

--INSERTA CABALLO
INSERT INTO caballo_v VALUES (
    'REG001',
    'Rodrigo el Potro',
    date '2005-09-22',
    'M',
    'Quarter',
    arr_ref_dueno((SELECT ref(d) FROM dueno d WHERE rfc = 'DA1D6F5V149A8')),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG002',
    'Buzzington',
    date '2005-09-22',
    'M',
    'Pura Sangre',
    arr_ref_dueno((SELECT ref(d) FROM dueno d WHERE rfc = 'D465ASD1FEW98')),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG003',
    'LightSpeed Sonic',
    date '2005-09-22',
    'M',
    'Quarter',
    arr_ref_dueno((SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3')),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG004',
    'Elec Horse',
    date '2005-09-22',
    'M',
    'Pura Sangre',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DA1D6F5V149A8'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG005',
    'Phenny',
    date '2005-09-22',
    'M',
    'Quarter',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D465ASD1FEW98'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG006',
    'Gobsuke',
    date '2005-09-22',
    'M',
    'Pura Sangre',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DA1D6F5V149A8'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D465ASD1FEW98'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG007',
    'Walky Walker',
    date '2005-09-22',
    'M',
    'Quarter',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DA1D6F5V149A8'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D465ASD1FEW98'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG008',
    'Silky',
    date '2005-09-22',
    'M',
    'Pura Sangre',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG009',
    'Tindalo',
    date '2005-09-22',
    'M',
    'Quarter',
    arr_ref_dueno((SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

INSERT INTO caballo_v VALUES (
    'REG010',
    'Duke',
    date '2005-09-22',
    'M',
    'Pura Sangre',
    arr_ref_dueno(
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DA1D6F5V149A8'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'D463JF4JF1MJ3'),
    	(SELECT ref(d) FROM dueno d WHERE rfc = 'DI16UI491SRTY')
    	),
    (SELECT ref(e) FROM Entrenador e WHERE rfc = 'E1A6D85197A1W'),
    NULL
);
/

--INSERTA ARRANQUE
INSERT INTO ARRANQUE VALUES( 
    1, 1, 10, 'ROJO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG001'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JAS5FD3216SDF'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    2, 2, 9, 'AZUL',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG002'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JV21A9DA98518'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    3, 3, 8, 'VERDE',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG003'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JADS1VA968V1A'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    4, 4, 7, 'NEGRO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG004'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J16A987V1AW6R'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    5, 5, 6, 'BLANCO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG005'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J19AW5E19SWDA'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    6, 6, 5, 'ROSA',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J1TGW6RT945W9'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    7, 7, 4, 'MORADO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J51E6FRE874FA'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    8, 8, 3, 'DORADO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG008'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J485FA63E587F'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    9, 9, 2, 'CYAN',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG009'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J46SD1AFA876E'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    10, 10, 1, 'CAFE',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG010'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J46DS54A1687F'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    11, 1, 10, 'ROJO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG001'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JAS5FD3216SDF'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    12, 2, 9, 'AZUL',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG002'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JV21A9DA98518'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    13, 3, 8, 'VERDE',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG003'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'JADS1VA968V1A'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    14, 4, 7, 'NEGRO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG004'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J16A987V1AW6R'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    15, 5, 6, 'BLANCO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG005'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J19AW5E19SWDA'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    16, 6, 5, 'ROSA',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J1TGW6RT945W9'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    17, 7, 4, 'MORADO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J51E6FRE874FA'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    18, 8, 3, 'DORADO',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG008'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J485FA63E587F'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    19, 9, 2, 'CYAN',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG009'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J46SD1AFA876E'),
    null
);
/

INSERT INTO ARRANQUE VALUES( 
    20, 10, 1, 'CAFE',
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG010'),
    (SELECT REF(j) FROM JOCKEY j WHERE j.rfc = 'J46DS54A1687F'),
    null
);
/

--INSERTA CARRERA
INSERT INTO carrera_v VALUES(1, 30000, DATE '2020-11-24', '2km pista', 
    ARR_REF_ARRANQUE(
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 11),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 12),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 13),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 14),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 15),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 16),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 17),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 18),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 19),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 20)
));
/

INSERT INTO carrera_v VALUES(2, 30000, DATE '2020-11-24', 'campo traviesa', 
    ARR_REF_ARRANQUE(
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 2),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 4),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 6),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 8),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 10)
));
/

INSERT INTO carrera_v VALUES(3, 30000, DATE '2020-11-24', 'tiro-de-carro', 
    ARR_REF_ARRANQUE(
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 1),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 3),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 5),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 7),
    (SELECT REF(a) FROM ARRANQUE a WHERE a.id_arranque = 9)
));
/

--INSERT PROPIEDAD
INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DA1D6F5V149A8'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG001'),
    1,
    30000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DA1D6F5V149A8'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG004'),
    0.2,
    10000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DA1D6F5V149A8'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    0.25,
    4500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DA1D6F5V149A8'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    0.2,
    2400
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DA1D6F5V149A8'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG010'),
    0.1,
    2000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D465ASD1FEW98'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG002'),
    1,
    15000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D465ASD1FEW98'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG005'),
    0.5,
    16000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D465ASD1FEW98'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    0.25,
    4500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D465ASD1FEW98'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    0.6,
    7200
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG003'),
    1,
    80000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG004'),
    0.2,
    10000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG005'),
    0.5,
    16000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    0.25,
    4500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    0.1,
    1200
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG008'),
    0.5,
    10500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'D463JF4JF1MJ3'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG010'),
    0.8,
    16000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG004'),
    0.6,
    30000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG006'),
    0.25,
    4500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG007'),
    0.1,
    1200
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG008'),
    0.5,
    10500
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG009'),
    1,
    24000
);
/

INSERT INTO propiedad VALUES(
    (SELECT REF(d) FROM dueno d WHERE d.rfc = 'DI16UI491SRTY'),
    (SELECT REF(c) FROM CABALLO c WHERE c.registro = 'REG010'),
    0.1,
    2000
);
/
