-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2020-07-11 17:46:41 GMT-04:00
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE acreditaciones (
    id_acreditaciones             NUMBER NOT NULL,
    cargas_familiares             CHAR(1),
    acredita_cargas_familiares    CHAR(1),
    fecha_documento               DATE,
    pueblo_indigena               CHAR(1),
    acredita_pueblo_indigena      CHAR(1),
    fecha_documento_p_originario  CHAR(1),
    t_tecnico_profesional         CHAR(1),
    titulo                        VARCHAR2(50),
    institucion                   VARCHAR2(25),
    acredita_titulo               CHAR(1),
    fecha_documento_titulo        DATE,
    postulante_rut_postulante     NUMBER NOT NULL
);

CREATE UNIQUE INDEX acreditaciones__idx ON
    acreditaciones (
        postulante_rut_postulante
    ASC );

ALTER TABLE acreditaciones ADD CONSTRAINT acreditaciones_pk PRIMARY KEY ( id_acreditaciones );

CREATE TABLE ahorro (
    id_ahorro                                 NUMBER NOT NULL,
    rut_titular_cuenta                        NUMBER NOT NULL,
    tipo_cuenta                               VARCHAR2(25) NOT NULL,
    postulante                                CHAR(1),
    conyuge                                   CHAR(1),
    conviviente_civil                         CHAR(1),
    num_cuenta                                VARCHAR2(50) NOT NULL,
    fecha_apertura                            DATE,
    nomto_ahorrado                            NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         entidad_financiera_id_entidad_financiera  DATE NOT NULL,
    postulante_rut_postulante                 NUMBER NOT NULL
);

CREATE UNIQUE INDEX ahorro__idx ON
    ahorro (
        postulante_rut_postulante
    ASC );

CREATE UNIQUE INDEX ahorro__idxv1 ON
    ahorro (
        entidad_financiera_id_entidad_financiera
    ASC );

ALTER TABLE ahorro ADD CONSTRAINT ahorro_pk PRIMARY KEY ( id_ahorro );

CREATE TABLE anomalias_dificiles (
    id_anomalias_dificiles  NUMBER NOT NULL,
    terreno_dificil         CHAR(1) NOT NULL,
    plagas                  CHAR(1) NOT NULL,
    fundamento              CHAR(1) NOT NULL,
    muros_estructurales     CHAR(1) NOT NULL,
    entrepiso               CHAR(1) NOT NULL,
    estructura_techumbre    CHAR(1) NOT NULL,
    red_agua_potable        CHAR(1) NOT NULL,
    alcantarillado          CHAR(1) NOT NULL,
    red_electrica           CHAR(1) NOT NULL,
    red_gas                 CHAR(1) NOT NULL
);

ALTER TABLE anomalias_dificiles ADD CONSTRAINT anomalias_dificiles_pk PRIMARY KEY ( id_anomalias_dificiles );

CREATE TABLE anomalias_faciles (
    id_anomalias_faciles                    NUMBER NOT NULL,
    humedad                                 CHAR(1) NOT NULL,
    radier_pavimento                        CHAR(1) NOT NULL,
    tabiqueria_muros                        CHAR(1) NOT NULL,
    revestimiento_externo                   CHAR(1) NOT NULL,
    revestimiento_internos                  CHAR(1) NOT NULL,
    puertas_ventanas                        CHAR(1) NOT NULL,
    cubierta_techumbre                      CHAR(1) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         artefactos_agua_potable_aguas_servidas  CHAR(1) NOT NULL,
    artefactos_electricos                   CHAR(1),
    observaciones                           VARCHAR2(100)
);

ALTER TABLE anomalias_faciles ADD CONSTRAINT anomalias_faciles_pk PRIMARY KEY ( id_anomalias_faciles );

CREATE TABLE antecedentes_consultor (
    rut_consultor     NUMBER NOT NULL,
    nombre_consultor  VARCHAR2(50) NOT NULL,
    fono_consultor    NUMBER,
    email_consultor   VARCHAR2(50),
    rol_consultor     VARCHAR2(15) NOT NULL,
    categoria         VARCHAR2(15),
    num_resolucion    NUMBER NOT NULL,
    fecha_resolucion  DATE
);

ALTER TABLE antecedentes_consultor ADD CONSTRAINT antecedentes_consultor_pk PRIMARY KEY ( rut_consultor );

CREATE TABLE beneficioario_subsidio (
    fecha_solicitud        DATE NOT NULL,
    rut_beneficiario       NUMBER NOT NULL,
    fecha_inspeccion       DATE NOT NULL,
    año_subsidio_obtenido  DATE NOT NULL,
    subsidio_id_subsidio   NUMBER NOT NULL
);

CREATE UNIQUE INDEX beneficioario_subsidio__idx ON
    beneficioario_subsidio (
        subsidio_id_subsidio
    ASC );

ALTER TABLE beneficioario_subsidio ADD CONSTRAINT beneficioario_subsidio_pk PRIMARY KEY ( rut_beneficiario );

CREATE TABLE caracteristica_vivienda (
    usada                        CHAR(1) NOT NULL,
    depto                        NUMBER,
    num_piso                     NUMBER,
    economica                    CHAR(1),
    rol_sii                      NUMBER,
    id_caracteristicas_vivienda  NUMBER NOT NULL,
    area_terreno                 NUMBER,
    area_vivienda                NUMBER NOT NULL,
    num_pisos_vivienda           NUMBER,
    tipo_techumbre               VARCHAR2(15),
    tupo_contruccion             VARCHAR2(15),
    tipo_piso_entre_pisos        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    estado                       unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
                    
    );

ALTER TABLE caracteristica_vivienda ADD CONSTRAINT caracteristica_vivienda_pk PRIMARY KEY ( id_caracteristicas_vivienda );

CREATE TABLE comuna (
    id_comuna                           NUMBER NOT NULL,
    descripcion_comuna                  VARCHAR2(30) NOT NULL,
    rut_postulante                      NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         ubicacion_preferencia_id_ubicacion  NUMBER NOT NULL,
    regiones_id_region                  NUMBER NOT NULL
);

CREATE UNIQUE INDEX comuna__idx ON
    comuna (
        regiones_id_region
    ASC );

CREATE UNIQUE INDEX comuna__idxv1 ON
    comuna (
        ubicacion_preferencia_id_ubicacion
    ASC );

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );

CREATE TABLE contacto_postulante (
    id_contacto_postulante     NUMBER NOT NULL,
    fono_tranajo               NUMBER,
    fono_domicilio             NUMBER,
    fono_movil                 NUMBER,
    cod_postal                 NUMBER,
    email                      VARCHAR2(50),
    id_contacto_postulante1    NUMBER NOT NULL,
    postulante_rut_postulante  NUMBER NOT NULL
);

CREATE UNIQUE INDEX contacto_postulante__idx ON
    contacto_postulante (
        postulante_rut_postulante
    ASC );

ALTER TABLE contacto_postulante ADD CONSTRAINT contacto_postulante_pk PRIMARY KEY ( id_contacto_postulante );

CREATE TABLE conyuge_conviviente (
    rut_conyuge_conviviente   NUMBER NOT NULL,
    fecha_naci_conyuge_convi  DATE NOT NULL,
    p_apellido                VARCHAR2(20) NOT NULL,
    s_apellido                VARCHAR2(20) NOT NULL,
    nombres                   DATE NOT NULL,
    nacionalidad              VARCHAR2(25) NOT NULL
);

ALTER TABLE conyuge_conviviente ADD CONSTRAINT conyuge_conviviente_pk PRIMARY KEY ( rut_conyuge_conviviente );

CREATE TABLE datos_vivienda (
    id_vivienda                                          NUMBER NOT NULL,
    direccion                                            VARCHAR2(50) NOT NULL,
    villa_poblacion                                      VARCHAR2(25),
    num_permiso_edificacion                              NUMBER NOT NULL,
    año_edificacion                                      DATE NOT NULL,
    receptor_final                                       VARCHAR2(25), 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         caracteristica_vivienda_id_caracteristicas_vivienda  NUMBER NOT NULL,
    propietario_vivienda_rut                             NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         estado_conservacion_vivienda_id_estado_conservacion  NUMBER NOT NULL,
    comuna_id_comuna                                     NUMBER NOT NULL
);

CREATE UNIQUE INDEX datos_vivienda__idx ON
    datos_vivienda (
        estado_conservacion_vivienda_id_estado_conservacion
    ASC );

ALTER TABLE datos_vivienda ADD CONSTRAINT datos_vivienda_pk PRIMARY KEY ( id_vivienda );

CREATE TABLE domicilio_postulante (
    id_domicilio_postulante    NUMBER NOT NULL,
    calle                      VARCHAR2(50) NOT NULL,
    numero                     NUMBER,
    block                      VARCHAR2(5),
    departamento               VARCHAR2(10),
    manzana                    VARCHAR2(10),
    sitio                      VARCHAR2(10),
    localidad                  VARCHAR2(25),
    poblacion_villaa           VARCHAR2(25),
    postulante_rut_postulante  NUMBER NOT NULL,
    comuna_id_comuna           NUMBER NOT NULL
);

CREATE UNIQUE INDEX domicilio_postulante__idx ON
    domicilio_postulante (
        comuna_id_comuna
    ASC );

CREATE UNIQUE INDEX domicilio_postulante__idxv1 ON
    domicilio_postulante (
        postulante_rut_postulante
    ASC );

ALTER TABLE domicilio_postulante ADD CONSTRAINT domicilio_postulante_pk PRIMARY KEY ( id_domicilio_postulante );

CREATE TABLE entidad_financiera (
    id_entidad_financiera  DATE NOT NULL,
    descripcion            VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    ahorro_id_ahorro       NUMBER NOT NULL
);

CREATE UNIQUE INDEX entidad_financiera__idx ON
    entidad_financiera (
        ahorro_id_ahorro
    ASC );

ALTER TABLE entidad_financiera ADD CONSTRAINT entidad_financiera_pk PRIMARY KEY ( id_entidad_financiera );

CREATE TABLE estado_civil (
    id_e_civil                 NUMBER NOT NULL,
    descripcion                VARCHAR2(15) NOT NULL,
    postulante_rut_postulante  NUMBER NOT NULL
);

CREATE UNIQUE INDEX estado_civil__idx ON
    estado_civil (
        postulante_rut_postulante
    ASC );

ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_pk PRIMARY KEY ( id_e_civil );

CREATE TABLE estado_conservacion_vivienda (
    id_estado_conservacion      NUMBER NOT NULL,
    descripcion                 VARCHAR2(15),
    datos_vivienda_id_vivienda  NUMBER NOT NULL
);

--  ERROR: Index name length exceeds maximum allowed length(30) 
CREATE UNIQUE INDEX estado_conservacion_vivienda__idx ON
    estado_conservacion_vivienda (
        datos_vivienda_id_vivienda
    ASC );

--  ERROR: PK name length exceeds maximum allowed length(30) 
ALTER TABLE estado_conservacion_vivienda ADD CONSTRAINT estado_conservacion_vivienda_pk PRIMARY KEY ( id_estado_conservacion );

CREATE TABLE pais (
    id_pais           NUMBER NOT NULL,
    descripcion_pais  VARCHAR2(25),
    rut_postulante    NUMBER NOT NULL
);

ALTER TABLE pais ADD CONSTRAINT pais_pk PRIMARY KEY ( id_pais );

CREATE TABLE postulante (
    rut_postulante                                NUMBER NOT NULL,
    fecha_nacimiento                              DATE NOT NULL,
    p_apellido                                    VARCHAR2(50) NOT NULL,
    s_apellido                                    VARCHAR2(50) NOT NULL,
    nombres                                       VARCHAR2(50) NOT NULL,
    cert_permanencia                              CHAR(1),
    fecha_certificado_permanencia                 DATE,
    id_region                                     NUMBER NOT NULL,
    id_pais                                       NUMBER NOT NULL,
    id_comuna                                     NUMBER NOT NULL,
    id_conyuge_conviviente                        NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         conyuge_conviviente_rut_conyuge_conviviente   NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         contacto_postulante_id_contacto_postulante    NUMBER
    NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         domicilio_postulante_id_domicilio_postulante  NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         acreditaciones_id_acreditaciones              NUMBER NOT NULL,
    ahorro_id_ahorro                              NUMBER NOT NULL,
    estado_civil_id_e_civil                       NUMBER NOT NULL,
    subsidio_id_subsidio                          NUMBER NOT NULL
);

CREATE UNIQUE INDEX postulante__idx ON
    postulante (
        ahorro_id_ahorro
    ASC );

CREATE UNIQUE INDEX postulante__idxv1 ON
    postulante (
        acreditaciones_id_acreditaciones
    ASC );

CREATE UNIQUE INDEX postulante__idxv2 ON
    postulante (
        contacto_postulante_id_contacto_postulante
    ASC );

CREATE UNIQUE INDEX postulante__idxv3 ON
    postulante (
        conyuge_conviviente_rut_conyuge_conviviente
    ASC );

CREATE UNIQUE INDEX postulante__idxv4 ON
    postulante (
        domicilio_postulante_id_domicilio_postulante
    ASC );

CREATE UNIQUE INDEX postulante__idxv5 ON
    postulante (
        estado_civil_id_e_civil
    ASC );

CREATE UNIQUE INDEX postulante__idxv6 ON
    postulante (
        subsidio_id_subsidio
    ASC );

ALTER TABLE postulante ADD CONSTRAINT postulante_pk PRIMARY KEY ( rut_postulante );

CREATE TABLE propietario_vivienda (
    nombre                VARCHAR2(100) NOT NULL,
    rut                   NUMBER NOT NULL,
    correo                VARCHAR2(60),
    telefono              NUMBER,
    subsidio_id_subsidio  NUMBER NOT NULL
);

CREATE UNIQUE INDEX propietario_vivienda__idx ON
    propietario_vivienda (
        subsidio_id_subsidio
    ASC );

ALTER TABLE propietario_vivienda ADD CONSTRAINT propietario_vivienda_pk PRIMARY KEY ( rut );

CREATE TABLE regiones (
    id_region        NUMBER NOT NULL,
    descripcion_reg  VARCHAR2(50) NOT NULL,
    rut_postulante   NUMBER NOT NULL,
    pais_id_pais     NUMBER NOT NULL
);

CREATE UNIQUE INDEX regiones__idx ON
    regiones (
        pais_id_pais
    ASC );

ALTER TABLE regiones ADD CONSTRAINT regiones_pk PRIMARY KEY ( id_region );

CREATE TABLE subsidio (
    id_subsidio                              NUMBER NOT NULL,
    nombre_subsidio                          VARCHAR2(25) NOT NULL,
    tipo_subsidio                            VARCHAR2(25) NOT NULL,
    postulante_rut_postulante                NUMBER NOT NULL,
    propietario_vivienda_rut                 NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         beneficioario_subsidio_rut_beneficiario  NUMBER NOT NULL
);

CREATE UNIQUE INDEX subsidio__idx ON
    subsidio (
        postulante_rut_postulante
    ASC );

CREATE UNIQUE INDEX subsidio__idxv1 ON
    subsidio (
        propietario_vivienda_rut
    ASC );

CREATE UNIQUE INDEX subsidio__idxv2 ON
    subsidio (
        beneficioario_subsidio_rut_beneficiario
    ASC );

ALTER TABLE subsidio ADD CONSTRAINT subsidio_pk PRIMARY KEY ( id_subsidio );

CREATE TABLE ubicacion_preferencia (
    id_ubicacion      NUMBER NOT NULL,
    tramo_1           CHAR(1),
    tramo_2           BLOB,
    tramo_3           CHAR(1),
    valor_vivienda    NUMBER NOT NULL,
    comuna_id_comuna  NUMBER NOT NULL
);

CREATE UNIQUE INDEX ubicacion_preferencia__idx ON
    ubicacion_preferencia (
        comuna_id_comuna
    ASC );

ALTER TABLE ubicacion_preferencia ADD CONSTRAINT ubicacion_preferencia_pk PRIMARY KEY ( id_ubicacion );

CREATE TABLE vivienda_anomalias_faciles (
    datos_vivienda_id_vivienda              NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         anomalias_faciles_id_anomalias_faciles  NUMBER NOT NULL
);

ALTER TABLE vivienda_anomalias_faciles ADD CONSTRAINT vivienda_anomalias_faciles_pk PRIMARY KEY ( datos_vivienda_id_vivienda,
                                                                                                  anomalias_faciles_id_anomalias_faciles );

CREATE TABLE vivienda_consultor (
    datos_vivienda_id_vivienda            NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         antecedentes_consultor_rut_consultor  NUMBER NOT NULL
);

ALTER TABLE vivienda_consultor ADD CONSTRAINT vivienda_consultor_pk PRIMARY KEY ( datos_vivienda_id_vivienda,
                                                                                  antecedentes_consultor_rut_consultor );

CREATE TABLE viviendaanomalias (
    datos_vivienda_id_vivienda                  NUMBER NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
         anomalias_dificiles_id_anomalias_dificiles  NUMBER NOT NULL
);

ALTER TABLE viviendaanomalias ADD CONSTRAINT viviendaanomalias_pk PRIMARY KEY ( datos_vivienda_id_vivienda,
                                                                                anomalias_dificiles_id_anomalias_dificiles );

ALTER TABLE acreditaciones
    ADD CONSTRAINT acreditaciones_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

ALTER TABLE ahorro
    ADD CONSTRAINT ahorro_entidad_financiera_fk FOREIGN KEY ( entidad_financiera_id_entidad_financiera )
        REFERENCES entidad_financiera ( id_entidad_financiera );

ALTER TABLE ahorro
    ADD CONSTRAINT ahorro_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE beneficioario_subsidio
    ADD CONSTRAINT beneficioario_subsidio_subsidio_fk FOREIGN KEY ( subsidio_id_subsidio )
        REFERENCES subsidio ( id_subsidio );

-- Error - Foreign Key COMUNA_DOMICILIO_POSTULANTE_FK has no columns

ALTER TABLE comuna
    ADD CONSTRAINT comuna_regiones_fk FOREIGN KEY ( regiones_id_region )
        REFERENCES regiones ( id_region );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE comuna
    ADD CONSTRAINT comuna_ubicacion_preferencia_fk FOREIGN KEY ( ubicacion_preferencia_id_ubicacion )
        REFERENCES ubicacion_preferencia ( id_ubicacion );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE contacto_postulante
    ADD CONSTRAINT contacto_postulante_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE datos_vivienda
    ADD CONSTRAINT datos_vivienda_caracteristica_vivienda_fk FOREIGN KEY ( caracteristica_vivienda_id_caracteristicas_vivienda )
        REFERENCES caracteristica_vivienda ( id_caracteristicas_vivienda );

ALTER TABLE datos_vivienda
    ADD CONSTRAINT datos_vivienda_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE datos_vivienda
    ADD CONSTRAINT datos_vivienda_estado_conservacion_vivienda_fk FOREIGN KEY ( estado_conservacion_vivienda_id_estado_conservacion )
        REFERENCES estado_conservacion_vivienda ( id_estado_conservacion );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE datos_vivienda
    ADD CONSTRAINT datos_vivienda_propietario_vivienda_fk FOREIGN KEY ( propietario_vivienda_rut )
        REFERENCES propietario_vivienda ( rut );

ALTER TABLE domicilio_postulante
    ADD CONSTRAINT domicilio_postulante_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE domicilio_postulante
    ADD CONSTRAINT domicilio_postulante_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

ALTER TABLE entidad_financiera
    ADD CONSTRAINT entidad_financiera_ahorro_fk FOREIGN KEY ( ahorro_id_ahorro )
        REFERENCES ahorro ( id_ahorro );

ALTER TABLE estado_civil
    ADD CONSTRAINT estado_civil_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE estado_conservacion_vivienda
    ADD CONSTRAINT estado_conservacion_vivienda_datos_vivienda_fk FOREIGN KEY ( datos_vivienda_id_vivienda )
        REFERENCES datos_vivienda ( id_vivienda );

-- Error - Foreign Key PAIS_REGIONES_FK has no columns

ALTER TABLE postulante
    ADD CONSTRAINT postulante_acreditaciones_fk FOREIGN KEY ( acreditaciones_id_acreditaciones )
        REFERENCES acreditaciones ( id_acreditaciones );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_ahorro_fk FOREIGN KEY ( ahorro_id_ahorro )
        REFERENCES ahorro ( id_ahorro );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE postulante
    ADD CONSTRAINT postulante_contacto_postulante_fk FOREIGN KEY ( contacto_postulante_id_contacto_postulante )
        REFERENCES contacto_postulante ( id_contacto_postulante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE postulante
    ADD CONSTRAINT postulante_conyuge_conviviente_fk FOREIGN KEY ( conyuge_conviviente_rut_conyuge_conviviente )
        REFERENCES conyuge_conviviente ( rut_conyuge_conviviente );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE postulante
    ADD CONSTRAINT postulante_domicilio_postulante_fk FOREIGN KEY ( domicilio_postulante_id_domicilio_postulante )
        REFERENCES domicilio_postulante ( id_domicilio_postulante );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_estado_civil_fk FOREIGN KEY ( estado_civil_id_e_civil )
        REFERENCES estado_civil ( id_e_civil );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_subsidio_fk FOREIGN KEY ( subsidio_id_subsidio )
        REFERENCES subsidio ( id_subsidio );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE propietario_vivienda
    ADD CONSTRAINT propietario_vivienda_subsidio_fk FOREIGN KEY ( subsidio_id_subsidio )
        REFERENCES subsidio ( id_subsidio );

-- Error - Foreign Key REGIONES_COMUNA_FK has no columns

ALTER TABLE regiones
    ADD CONSTRAINT regiones_pais_fk FOREIGN KEY ( pais_id_pais )
        REFERENCES pais ( id_pais );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE subsidio
    ADD CONSTRAINT subsidio_beneficioario_subsidio_fk FOREIGN KEY ( beneficioario_subsidio_rut_beneficiario )
        REFERENCES beneficioario_subsidio ( rut_beneficiario );

ALTER TABLE subsidio
    ADD CONSTRAINT subsidio_postulante_fk FOREIGN KEY ( postulante_rut_postulante )
        REFERENCES postulante ( rut_postulante );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE subsidio
    ADD CONSTRAINT subsidio_propietario_vivienda_fk FOREIGN KEY ( propietario_vivienda_rut )
        REFERENCES propietario_vivienda ( rut );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE ubicacion_preferencia
    ADD CONSTRAINT ubicacion_preferencia_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE vivienda_anomalias_faciles
    ADD CONSTRAINT vivienda_anomalias_faciles_anomalias_faciles_fk FOREIGN KEY ( anomalias_faciles_id_anomalias_faciles )
        REFERENCES anomalias_faciles ( id_anomalias_faciles );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE vivienda_anomalias_faciles
    ADD CONSTRAINT vivienda_anomalias_faciles_datos_vivienda_fk FOREIGN KEY ( datos_vivienda_id_vivienda )
        REFERENCES datos_vivienda ( id_vivienda );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE vivienda_consultor
    ADD CONSTRAINT vivienda_consultor_antecedentes_consultor_fk FOREIGN KEY ( antecedentes_consultor_rut_consultor )
        REFERENCES antecedentes_consultor ( rut_consultor );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE vivienda_consultor
    ADD CONSTRAINT vivienda_consultor_datos_vivienda_fk FOREIGN KEY ( datos_vivienda_id_vivienda )
        REFERENCES datos_vivienda ( id_vivienda );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE viviendaanomalias
    ADD CONSTRAINT viviendaanomalias_anomalias_dificiles_fk FOREIGN KEY ( anomalias_dificiles_id_anomalias_dificiles )
        REFERENCES anomalias_dificiles ( id_anomalias_dificiles );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE viviendaanomalias
    ADD CONSTRAINT viviendaanomalias_datos_vivienda_fk FOREIGN KEY ( datos_vivienda_id_vivienda )
        REFERENCES datos_vivienda ( id_vivienda );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            24
-- CREATE INDEX                            26
-- ALTER TABLE                             59
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  42
-- WARNINGS                                 0
