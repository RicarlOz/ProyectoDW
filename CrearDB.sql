--Crear array de tecnicas de entrenamiento para entrenadores
CREATE OR REPLACE TYPE t_e AS varray(4) OF varchar2(30);
/

--Crear NESTED TABLES para las referencias 1..*
CREATE OR REPLACE TYPE arr_ref_caballo AS TABLE OF REF caballo_t;
/
 
CREATE OR REPLACE TYPE arr_ref_arranque AS TABLE OF REF arranque_t;
/
 
CREATE OR REPLACE TYPE arr_ref_dueno AS TABLE OF REF dueno_t;
/

--Crear tipo persona
CREATE OR REPLACE TYPE persona_t AS OBJECT (
    rfc varchar2(30),
    nombre varchar2(30),
    sexo char,
    direccion varchar2(30),
    telefono varchar2(10)
)NOT FINAL;
/

--Crear tipo dueno heredando los atributos de persona
CREATE OR REPLACE TYPE dueno_t UNDER persona_t (
    es_dueno arr_ref_caballo,
    ganancias int
);
/

--Crear tipo entrenador heredando los atributos de persona
CREATE OR REPLACE TYPE entrenador_t UNDER persona_t (
    anos_experiencia int,
    tecnica_entrena t_e,
    salario numeric(8),
    entrena arr_ref_caballo
);
/

--Crear tipo jockey heredando los atributos de persona
CREATE OR REPLACE TYPE jockey_t UNDER persona_t (
    estatura numeric,
    peso numeric(8),
    edad int,
    salario numeric(8),
    arranques arr_ref_arranque
);
/

--Crear tipo propiedad
CREATE OR REPLACE TYPE propiedad_t AS OBJECT (
    es_dueno REF dueno_t,
    propiedad_de REF caballo_t,
    porcentaje numeric(8),
    cantidad int
);
/

--Crear tipo caballo
CREATE OR REPLACE TYPE caballo_t AS OBJECT (
    registro varchar2(30),
    nombre varchar2(30),
    fecha_nacimiento date,
    genero char,
    tipo varchar2(15),
    propiedad_de arr_ref_dueno,
    entrenado_por REF entrenador_t,
    en_carrera arr_ref_arranque
);
/

--Crear tipo arranque
CREATE OR REPLACE TYPE arranque_t AS OBJECT (
    id_arranque int,
    posicion_inicio int,
    posicion_final int,
    color varchar2(10),
    un_caballo REF caballo_t,
    un_jinete REF jockey_t,
    en_carrera REF carrera_t
);
/

--Crear tipo carrera
CREATE OR REPLACE TYPE carrera_t AS OBJECT (
    num_carrera int,
    bolsa_premio numeric(8),
    fecha date,
    tipo_carrera varchar(30),
    posiciones arr_ref_arranque
);
/

-- SE REPITE EL PROCESO PARA ASEGURAR LA CREACIÓN DE LOS TIPOS
--Crear array de tecnicas de entrenamiento para entrenadores
CREATE OR REPLACE TYPE t_e AS varray(4) OF varchar2(30);
/

--Crear NESTED TABLES para las referencias 1..*
CREATE OR REPLACE TYPE arr_ref_caballo AS TABLE OF REF caballo_t;
/
 
CREATE OR REPLACE TYPE arr_ref_arranque AS TABLE OF REF arranque_t;
/
 
CREATE OR REPLACE TYPE arr_ref_dueno AS TABLE OF REF dueno_t;
/

--Crear tipo persona
CREATE OR REPLACE TYPE persona_t AS OBJECT (
    rfc varchar2(30),
    nombre varchar2(30),
    sexo char,
    direccion varchar2(30),
    telefono varchar2(10)
)NOT FINAL;
/

--Crear tipo dueno heredando los atributos de persona
CREATE OR REPLACE TYPE dueno_t UNDER persona_t (
    es_dueno arr_ref_caballo,
    ganancias int
);
/

--Crear tipo entrenador heredando los atributos de persona
CREATE OR REPLACE TYPE entrenador_t UNDER persona_t (
    anos_experiencia int,
    tecnica_entrena t_e,
    salario numeric(8),
    entrena arr_ref_caballo
);
/

--Crear tipo jockey heredando los atributos de persona
CREATE OR REPLACE TYPE jockey_t UNDER persona_t (
    estatura numeric,
    peso numeric(8),
    edad int,
    salario numeric(8),
    arranques arr_ref_arranque
);
/

--Crear tipo propiedad
CREATE OR REPLACE TYPE propiedad_t AS OBJECT (
    es_dueno REF dueno_t,
    propiedad_de REF caballo_t,
    porcentaje numeric(8),
    cantidad int
);
/

--Crear tipo caballo
CREATE OR REPLACE TYPE caballo_t AS OBJECT (
    registro varchar2(30),
    nombre varchar2(30),
    fecha_nacimiento date,
    genero char,
    tipo varchar2(15),
    propiedad_de arr_ref_dueno,
    entrenado_por REF entrenador_t,
    en_carrera arr_ref_arranque
);
/

--Crear tipo arranque
CREATE OR REPLACE TYPE arranque_t AS OBJECT (
    id_arranque int,
    posicion_inicio int,
    posicion_final int,
    color varchar2(10),
    un_caballo REF caballo_t,
    un_jinete REF jockey_t,
    en_carrera REF carrera_t
);
/

--Crear tipo carrera
CREATE OR REPLACE TYPE carrera_t AS OBJECT (
    num_carrera int,
    bolsa_premio numeric(8),
    fecha date,
    tipo_carrera varchar(30),
    posiciones arr_ref_arranque
);
/


--CREACIÓN DE LAS TABLAS BASADAS EN LOS TIPOS
CREATE TABLE Persona OF persona_t (rfc PRIMARY KEY);
/
CREATE TABLE dueno OF dueno_t (rfc PRIMARY KEY) NESTED TABLE es_dueno STORE AS es_dueno_tab;
/
CREATE TABLE Entrenador OF entrenador_t (rfc PRIMARY KEY) NESTED TABLE entrena STORE AS entrena_tab;
/
CREATE TABLE Jockey OF jockey_t (rfc PRIMARY KEY) NESTED TABLE arranques STORE AS arranques_jockey_tab;
/
CREATE TABLE Propiedad OF propiedad_t;
/
CREATE TABLE Caballo OF caballo_t (registro PRIMARY KEY)
NESTED TABLE propiedad_de STORE AS propiedad_de_tab,
NESTED TABLE en_carrera STORE AS en_carrera_tab;
/
CREATE TABLE Arranque OF arranque_t (id_arranque PRIMARY KEY);
/
CREATE TABLE Carrera OF carrera_t(num_carrera PRIMARY KEY) NESTED TABLE posiciones STORE AS posiciones_tab;
/

--CREACIÓN DE VIEW DE LAS TABLAS
CREATE OR REPLACE VIEW dueno_v AS SELECT 
    RFC,
    NOMBRE,
    SEXO,
    DIRECCION,
    TELEFONO,
    ES_dueno,
    GANANCIAS
    FROM dueno;
/
 
CREATE OR REPLACE VIEW entrenador_v AS SELECT 
    RFC,
    NOMBRE,
    SEXO,
    DIRECCION,
    TELEFONO,
    ANOS_EXPERIENCIA,
    TECNICA_ENTRENA,
    SALARIO,
    ENTRENA  
    FROM Entrenador;
/

CREATE OR REPLACE VIEW jockey_v AS SELECT 
    RFC,
    NOMBRE,
    SEXO,
    DIRECCION,
    TELEFONO,
    ESTATURA,
    PESO,
    EDAD,
    SALARIO,
    ARRANQUES
    FROM Jockey;
/

CREATE OR REPLACE VIEW carrera_v AS SELECT 
    NUM_CARRERA,
    BOLSA_PREMIO,
    FECHA,
    TIPO_CARRERA,
    POSICIONES
    FROM Carrera;
/

CREATE OR REPLACE VIEW caballo_v AS SELECT 
    REGISTRO,
    NOMBRE,
    FECHA_NACIMIENTO,
    GENERO,
    TIPO,
    PROPIEDAD_DE,
    ENTRENADO_POR,
    EN_CARRERA
    FROM Caballo;
 
CREATE VIEW arranque_v AS SELECT 
    ID_ARRANQUE,
    POSICION_INICIO,
    POSICION_FINAL,
    COLOR,
    UN_CABALLO,
    UN_JINETE,
    EN_CARRERA  
    FROM Arranque;
/

--CREACIÓN DE REGLAS
--Disjoint dueno
CREATE OR REPLACE TRIGGER insert_dueno
INSTEAD OF INSERT ON dueno_v
FOR EACH ROW
DECLARE
    rfcs_e char;
    rfcs_j char;
BEGIN
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_e  FROM ENTRENADOR WHERE rfc = :new.rfc;
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_j  FROM JOCKEY WHERE rfc = :new.rfc;
    IF (rfcs_e = 'Y') THEN
        NULL;
    ELSIF (rfcs_j = 'Y') THEN
        NULL;
    ELSE
        INSERT INTO dueno VALUES (:new.rfc, :new.nombre, :new.sexo, :new.direccion, :new.telefono, :new.es_dueno, :new.ganancias);
    END IF;
END;
/
 
--Disjoint entrenador y técnica entrena correcta
CREATE OR REPLACE TRIGGER insert_entrenador
INSTEAD OF INSERT ON entrenador_v
FOR EACH ROW
DECLARE
    rfcs_d char;
    rfcs_j char;
    igual boolean := FALSE;
BEGIN
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_d  FROM DUENO WHERE rfc = :new.rfc;
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_j  FROM JOCKEY WHERE rfc = :new.rfc;
    
    IF (rfcs_d = 'Y') THEN
        NULL;
    ELSIF (rfcs_j = 'Y') THEN
        NULL;
    ELSE
        FOR tecnica IN :new.tecnica_entrena.FIRST .. :new.tecnica_entrena.LAST LOOP
            IF (tecnica NOT IN ('carreras planas', 'de campo', 'tiro', 'salto')) THEN
                NULL;
            ELSE
                igual := TRUE;
            END IF;
        END LOOP;
        
        IF igual THEN
            NULL;
        ELSE    
            INSERT INTO Entrenador VALUES (:new.rfc, :new.nombre, :new.sexo, :new.direccion, :new.telefono, :new.anos_experiencia, :new.tecnica_entrena, :new.salario, :new.entrena);
        END IF;
    END IF;
END;
/
 
--Disjoint jockey
CREATE OR REPLACE TRIGGER insert_jockey
INSTEAD OF INSERT ON jockey_v
FOR EACH ROW
DECLARE
    rfcs_d char;
    rfcs_e char;
BEGIN
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_d  FROM DUENO WHERE rfc = :new.rfc;
    SELECT CASE WHEN MAX(rfc) IS NULL THEN 'N' ELSE 'Y' END existe INTO rfcs_e  FROM ENTRENADOR WHERE rfc = :new.rfc;
    IF (rfcs_d = 'Y') THEN
        NULL;
    ELSIF (rfcs_e = 'Y') THEN
        NULL;
    ELSE
        INSERT INTO Jockey VALUES (:new.rfc, :new.nombre, :new.sexo, :new.direccion, :new.telefono, :new.estatura, :new.peso, :new.edad, :new.salario, :new.arranques);
    END IF;
END;
/
 
--Tipo carrera correcta
CREATE OR REPLACE TRIGGER insert_carrera
INSTEAD OF INSERT ON carrera_v
FOR EACH ROW
BEGIN
    IF (:new.tipo_carrera NOT IN ('400m pista', '2km pista', 'campo traviesa', 'carrera con obstaculos', 'tiro-de-carro')) THEN
        NULL;
    ELSE
        INSERT INTO Carrera VALUES (:new.num_carrera, :new.bolsa_premio, :new.fecha, :new.tipo_carrera, :new.posiciones);
    END IF;
END;
/
 
CREATE OR REPLACE TRIGGER insert_caballo
INSTEAD OF INSERT ON caballo_v
FOR EACH ROW
BEGIN
    IF (:new.tipo NOT IN ('Pura Sangre', 'Quarter', 'Árabe', 'Appaloosa')) THEN
        NULL;
    ELSE
        INSERT INTO Caballo VALUES (:new.registro, :new.nombre, :new.fecha_nacimiento, :new.genero, :new.tipo, :new.propiedad_de, :new.entrenado_por, :new.en_carrera);
    END IF;
END;
/
 
--Porcentajes caballo ganador
CREATE OR REPLACE TRIGGER update_arranque
AFTER UPDATE OF en_carrera ON arranque
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    cantidad_duenos int;
    porcent numeric(8);
    duenos arr_ref_dueno;
    reg_caballo varchar2(30);
    premio numeric(8);
    p_dueno numeric(8);
    p_jockey numeric(8);
    p_entrenador numeric(8);
BEGIN
    IF :old.posicion_final = 1 THEN
        SELECT bolsa_premio INTO premio FROM Carrera c, TABLE(c.posiciones) p WHERE :old.id_arranque IN deref(p.column_value).id_arranque;
        --SELECT deref(a.en_carrera).bolsa_premio INTO premio FROM Arranque a WHERE a.id_arranque = :old.id_arranque;
        p_dueno := premio * 0.8;
        p_jockey := premio * 0.1;
        p_entrenador := premio * 0.1;
        UPDATE Jockey j SET j.salario = j.salario + p_jockey WHERE j.rfc = deref(:old.un_jinete).rfc;
        UPDATE Entrenador e SET e.salario = e.salario + p_entrenador WHERE e.rfc = deref(deref(:old.un_caballo).entrenado_por).rfc;
        /*
        SELECT c.propiedad_de INTO duenos FROM Caballo c WHERE c.registro = deref(:old.un_caballo).registro;
        SELECT REGISTRO INTO reg_caballo FROM Caballo c WHERE c.registro = deref(:old.un_caballo).registro;
        
        FOR dueno IN duenos.FIRST .. duenos.LAST LOOP
            DBMS_OUTPUT.PUT_LINE('Entra loop');
            SELECT p.porcentaje INTO porcent FROM Propiedad p WHERE deref(p.es_dueno).rfc = dueno AND deref(p.propiedad_de).registro = reg_caballo;
            UPDATE dueno d SET d.ganancias = d.ganancias + (p_dueno * porcent) WHERE d.rfc = deref(deref(:old.un_caballo).entrenado_por).rfc;
        END LOOP;*/
    END IF;
END;
/
