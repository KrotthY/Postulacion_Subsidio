
DROP TABLE ACCREDITATIONS;
DROP TABLE TITULAR_SAVING_CTA;
DROP TABLE FAMILY_RESPONSIBILITIES;
DROP TABLE OWNERS;
DROP TABLE POSTULANT;
DROP TABLE CONSULTANT;
DROP TABLE REQUEST;
DROP TABLE CIVIL_STATUS_SECTION;
DROP TABLE FORMS;
DROP TABLE SAVING_SECTION;
DROP TABLE SECTION_FAMILY_LOADS;
DROP TABLE INDIGENOUS_SECTION;
DROP TABLE SECTION_TITLE;
DROP TABLE SPOUSE;
DROP TABLE FORMS;
drop table SAVING;
Drop table AGE;
DROP TABLE LIVING_PLACE;
DROP TABLE TITULAR_SAVINGS_CTA;

--REACION DE TABLAS

CREATE TABLE ACCREDITATIONS
  (
    cod_acreditacion  number  NOT NULL PRIMARY KEY ,
    carg_familiar     VARCHAR (50) NOT NULL ,
    acred_car_fam     VARCHAR (50) NOT NULL ,
    fech_car_fam      DATE ,
    pue_indigena      VARCHAR (50) NOT NULL ,
    acred_pue_indig   VARCHAR (50) NOT NULL  ,
    fech_pue_indigena DATE ,
    titulo            VARCHAR (50) NOT NULL ,
    nom_titulo        VARCHAR2 (50) ,
    institucion       VARCHAR2 (50) ,
    acred_titulo      VARCHAR (50) NOT NULL,
    fech_titulo       DATE ,

    RUT_ID    VARCHAR2 (50 ) NOT NULL

  ) ;


CREATE TABLE SAVING
  (
    rut_titular        VARCHAR2 (50) NOT NULL PRIMARY KEY ,
    tipo_cuenta        VARCHAR2 (50) NOT NULL , 
    ent_financiera     VARCHAR2 (50) NOT NULL ,
    n_cuenta           VARCHAR2 (50) NOT NULL ,
    fec_apertura       DATE  ,
    monto_ahorrado     NUMBER NOT NULL ,
    fec_mandato        DATE ,
    cod_titular_cta NUMBER,
    RUT_ID    VARCHAR2 (50 ) NOT NULL
  ) ;



CREATE TABLE TITULAR_SAVINGS_CTA
  (
    cod_titular_cta NUMBER NOT NULL primary key ,
    postulante     VARCHAR (50) ,
    conyuge          VARCHAR (50) ,
    civil          VARCHAR (50)
  ) ;



CREATE TABLE FAMILY_RESPONSIBILITIES
  (
    rut_carga          VARCHAR2 (50) NOT NULL PRIMARY KEY,
    primer_apellido    VARCHAR2 (50) NOT NULL ,
    segundo_apellido   VARCHAR2 (50) NOT NULL ,
    nombres            VARCHAR2 (50) NOT NULL ,
    relacion_postuante VARCHAR2 (50) NOT NULL ,
    fecha_declaracion  DATE NOT NULL ,
    RUT_ID   VARCHAR2 (50 ) NOT NULL

  ) ;



CREATE TABLE CONSULTANT
  (
    nombre_consultor VARCHAR2 (50) NOT NULL ,
    run_consultor    VARCHAR2 (50)NOT NULL ,
    email            VARCHAR2 (50)NOT NULL ,
    rol              VARCHAR2 (50)NOT NULL ,
    resolucion       VARCHAR2 (50) NOT NULL,
    telefono         NUMBER NOT NULL ,
    categoria        VARCHAR2 (50)NOT NULL ,
    fecha_resolucion VARCHAR2 (50)NOT NULL ,
    CONSULTOR_ID     NUMBER NOT NULL PRIMARY KEY
  ) ;



CREATE TABLE SPOUSE
  (
    rut_cony         VARCHAR2 (50) NOT NULL PRIMARY KEY,
    fech_nac         DATE NOT NULL ,
    primer_apellido  VARCHAR2 (50) NOT NULL ,
    segundo_apellido VARCHAR2 (50) NOT NULL ,
    nombres          VARCHAR2 (50) NOT NULL ,
    nacionalidad     VARCHAR2 (50) NOT NULL ,
    RUT_ID   VARCHAR2 (10 CHAR) NOT NULL
  ) ;




CREATE TABLE AGE
  (
    cod_edad VARCHAR2 (50) NOT NULL PRIMARY KEY,
    edad_min NUMBER NOT NULL ,
    edad_max NUMBER NOT NULL,
    puntaje  NUMBER NOT NULL
  ) ;



CREATE TABLE CIVIL_STATUS_SECTION
  (
    cod_est_civil  NUMBER NOT NULL PRIMARY KEY ,
    descripcion    VARCHAR2 (50) NOT NULL ,
    puntaje        NUMBER 
    
  ) ;




CREATE TABLE FORMS
  (
    nro_folio       NUMBER NOT NULL PRIMARY KEY,
    Fech_recepcion  DATE ,
    nombre_receptor VARCHAR2 (50 CHAR) NOT NULL ,
    region          VARCHAR2 (50) NOT NULL,
    comuna          VARCHAR2 (50)NOT NULL ,
    valor_vivienda  NUMBER,
     rut_id VARCHAR2 (50)NOT NULL,
    CONSULTOR_ID     NUMBER
  );


CREATE TABLE POSTULANT
  (
    rut_id                  VARCHAR2 (50 ) NOT NULL  PRIMARY KEY,
    nombres              VARCHAR2 (50 ) NOT NULL ,
    primer_apellido      VARCHAR2 (50 ) NOT NULL ,
    segundo_apellido     VARCHAR2 (50) NOT NULL ,
    nacionalidad         VARCHAR2 (50) NOT NULL ,
    fecha_nac            DATE NOT NULL ,
    cod_est_civil        NUMBER NOT NULL ,
    nro_folio NUMBER NOT NULL ,
    cod_acreditacion   NUMBER NOT NULL ,
    tramo                VARCHAR2 (50) NOT NULL ,
    region_pref         VARCHAR2 (50) NOT NULL,
    comuna_pref VARCHAR2 (50) NOT NULL ,
    valor_vivienda     NUMBER ,
    calle              VARCHAR2 (50) NOT NULL ,
    numero             NUMBER NOT NULL ,
    blocke              VARCHAR (50)NOT NULL ,
    departamento       VARCHAR2 (50)NOT NULL ,
    manzana            VARCHAR2 (50)NOT NULL ,
    sitio              VARCHAR2 (50)NOT NULL,
    region             VARCHAR2 (50) NOT NULL ,
    comuna             VARCHAR2 (50) NOT NULL ,
    localidad          VARCHAR2 (50) NOT NULL,
    poblacion_villa    VARCHAR2 (50) NOT NULL,
    telefono_trabajo   VARCHAR2 (50)NOT NULL ,
    telefono_domicilio VARCHAR2 (50)NOT NULL ,
    telefono_movil     VARCHAR2 (50) NOT NULL ,
    cod_postal VARCHAR2 (50) ,
    email      VARCHAR2 (50) ,
    ESTADO_CIVIL  VARCHAR2 (50) NOT NULL
    
   );




CREATE TABLE OWNERS
  (
    rut_prop   VARCHAR2 (50) NOT NULL PRIMARY KEY,
    nombre    VARCHAR2 (50) NOT NULL ,
    telefono   VARCHAR2 (50) NOT NULL ,
    email     VARCHAR2 (50) NOT NULL 
  ) ;





CREATE TABLE REQUEST
  (
    n_folio_solicitud    NUMBER NOT NULL primary key ,
    fec_solicitud        DATE ,
    fec_inspeccion       DATE ,
    anno_subsidio        DATE ,
     rut_id              VARCHAR2 (50 ) NOT NULL,
    PROPIETARIO_rut_prop VARCHAR2 (50) NOT NULL,
     CONSULTOR_ID     NUMBER NOT NULL
  ) ;



CREATE TABLE SAVING_SECTION
  (
    cod_monto NUMBER NOT NULL PRIMARY KEY ,
    monto_min NUMBER ,
    monto_max NUMBER ,
    puntaje   NUMBER
  ) ;



CREATE TABLE SECTION_FAMILY_LOADS
  (
    cod_car_fam VARCHAR2 (50) NOT NULL ,
    cargas_min  NUMBER ,
    cargas_max  NUMBER ,
    puntaje     NUMBER
  ) ;



CREATE TABLE INDIGENOUS_SECTION
  (
    cod_indigena NUMBER NOT NULL PRIMARY KEY ,
    descripcion  VARCHAR (50) ,
    puntaje      NUMBER
  ) ;


CREATE TABLE SECTION_TITLE
  (
    cod_titulo  NUMBER PRIMARY KEY,
    descripcion VARCHAR2 (50) ,
    puntaje     NUMBER
  ) ;


CREATE TABLE LIVING_PLACE
  (
    id_vivienda          VARCHAR2 (50) NOT NULL PRIMARY KEY ,
    usada              VARCHAR (50) ,
    direccion            VARCHAR2 (50) ,
    economica            VARCHAR2 (50) ,
    n_departamento       VARCHAR2 (50) ,
    piso                 NUMBER ,
    rol_sii              VARCHAR2 (50) ,
    tipo_lugar           VARCHAR2 (50) ,
    comuna               VARCHAR2 (50) ,
    region               VARCHAR2 (50) ,
    PROPIETARIO_rut_prop VARCHAR2 (50)
  );
  





--ALTER TABLE ACREDITACION FK 
ALTER TABLE ACCREDITATIONS ADD CONSTRAINT FK_POSTULANTE FOREIGN KEY (RUT_ID) REFERENCES POSTULANT (RUT_ID) ;
--------alter table AHORRO--- FK
ALTER TABLE SAVING ADD CONSTRAINT AHORRO_TITULAR_CTA_FK FOREIGN KEY ( cod_titular_cta ) REFERENCES TITULAR_SAVINGS_CTA ( cod_titular_cta ) ;
ALTER TABLE SAVING ADD CONSTRAINT POSTULANTE_FK FOREIGN KEY ( RUT_ID ) REFERENCES POSTULANT ( RUT_ID ) ;
ALTER TABLE FORMS ADD CONSTRAINT CONSULTOR_FK FOREIGN KEY ( CONSULTOR_ID) REFERENCES CONSULTANT ( CONSULTOR_ID ) ;
ALTER TABLE FAMILY_RESPONSIBILITIES ADD CONSTRAINT F_CARGAS_FAMILIARES_POSTULANTE FOREIGN KEY ( rut_id ) REFERENCES POSTULANT ( rut_id ) ;
ALTER TABLE SPOUSE ADD CONSTRAINT FK_CONYUGE_POSTULANTE FOREIGN KEY ( rut_id ) REFERENCES POSTULANT ( rut_id) ;
ALTER TABLE POSTULANT ADD CONSTRAINT FK_POSTULANTE_FORMULARIO FOREIGN KEY ( nro_folio ) REFERENCES FORMS ( nro_folio ) ;
ALTER TABLE REQUEST ADD CONSTRAINT SOLICITUD_POSTULANTE_FK FOREIGN KEY ( rut_id) REFERENCES POSTULANT ( rut_id) ;
ALTER TABLE REQUEST ADD CONSTRAINT SOLICITUD_PROPIETARIO_FK FOREIGN KEY ( PROPIETARIO_rut_prop ) REFERENCES OWNERS ( rut_prop ) ;
ALTER TABLE REQUEST ADD CONSTRAINT FK_SOLICITUD_CONSULTOR FOREIGN KEY (consultor_id) REFERENCES CONSULTANT( consultor_id );
ALTER TABLE LIVING_PLACE ADD CONSTRAINT VIVIENDA_PROPIETARIO_FK FOREIGN KEY ( PROPIETARIO_rut_prop ) REFERENCES OWNERS ( rut_prop ) ;


--INSERT TABLE OWNERS--
INSERT INTO OWNERS(RUT_PROP,NOMBRE,TELEFONO,EMAIL)VALUES('2314572-6','ISAAC','221773320','ISAAC_VEGA@GMAIL.COM');
INSERT INTO OWNERS(RUT_PROP,NOMBRE,TELEFONO,EMAIL)VALUES('1657692-9','CARLOS','223547899','C.VIDAL@GMAIL.COM');
INSERT INTO OWNERS(RUT_PROP,NOMBRE,TELEFONO,EMAIL)VALUES('1478932-1','PAMELA','226391427','PAME_1@HOTMAIL.COM');
INSERT INTO OWNERS(RUT_PROP,NOMBRE,TELEFONO,EMAIL)VALUES('5871963-K','DIEGO','225478922','DIEGO_6@GMAIL.COM');
INSERT INTO OWNERS(RUT_PROP,NOMBRE,TELEFONO,EMAIL)VALUES('5879632-7','JORGE','226391420','JORGITO@GMAIL.COM');

--INSERT CONSULTANT--
INSERT INTO CONSULTANT(NOMBRE_CONSULTOR,RUN_CONSULTOR,EMAIL,ROL,RESOLUCION,TELEFONO,CATEGORIA,FECHA_RESOLUCION,CONSULTOR_ID) 
VALUES('FELIPE','168796246-K','PIPE@GMAIL.COM','2345L','PUEDE OPTAR','229654585','CASA','26/01/1987',01);
INSERT INTO CONSULTANT(NOMBRE_CONSULTOR,RUN_CONSULTOR,EMAIL,ROL,RESOLUCION,TELEFONO,CATEGORIA,FECHA_RESOLUCION,CONSULTOR_ID) 
VALUES('ANDRES','16546715-8','ANDRESITO@HOTMAIL.COM','2351B','NO OPTAR','95468755','DEPARTAMENTO','12/03/2018',02);
INSERT INTO CONSULTANT(NOMBRE_CONSULTOR,RUN_CONSULTOR,EMAIL,ROL,RESOLUCION,TELEFONO,CATEGORIA,FECHA_RESOLUCION,CONSULTOR_ID) 
VALUES('ANA','9845623-7','PANCHO@GMAIL.COM','12354C','OPTAR','235478921','DEPARTAMENTO','2011-12-27',03);
INSERT INTO CONSULTANT(NOMBRE_CONSULTOR,RUN_CONSULTOR,EMAIL,ROL,RESOLUCION,TELEFONO,CATEGORIA,FECHA_RESOLUCION,CONSULTOR_ID) 
VALUES('RUPERTINO','23147859-K','RUPY@GMAIL.COM','56478D','NO OPTAR','58974566','CASA','27/02/2005',04);
INSERT INTO CONSULTANT(NOMBRE_CONSULTOR,RUN_CONSULTOR,EMAIL,ROL,RESOLUCION,TELEFONO,CATEGORIA,FECHA_RESOLUCION,CONSULTOR_ID) 
VALUES('JUAN','16547896-8','JUANITO@GMAIL.COM','231456G','OPTAR','23145625','CASA','2011-12-27',05);

--INSERT FORMS----
INSERT INTO FORMS(NRO_FOLIO,FECH_RECEPCION,NOMBRE_RECEPTOR,REGION,COMUNA,VALOR_VIVIENDA,RUT_ID,CONSULTOR_ID) VALUES
(002,TO_DATE('05/01/17','DD/MM/RR'),'FELIPE','REGION METROPOLITANA','LA FLORIDA',45000000,'168796245-K',01);
INSERT INTO FORMS(NRO_FOLIO,FECH_RECEPCION,NOMBRE_RECEPTOR,REGION,COMUNA,VALOR_VIVIENDA,RUT_ID,CONSULTOR_ID) VALUES
(003,TO_DATE('06/03/20','DD/MM/RR'),'ANDRES','REGION LOS LAGOS','OSORNO',50000000,'16546715-8',02);
INSERT INTO FORMS(NRO_FOLIO,FECH_RECEPCION,NOMBRE_RECEPTOR,REGION,COMUNA,VALOR_VIVIENDA,RUT_ID,CONSULTOR_ID) VALUES
(004,TO_DATE('01/02/16','DD/MM/RR'),'ANA','REGION METROPOLITANA','PUENTE ALTO',30000000,'9845623-7',03);
INSERT INTO FORMS(NRO_FOLIO,FECH_RECEPCION,NOMBRE_RECEPTOR,REGION,COMUNA,VALOR_VIVIENDA,RUT_ID,CONSULTOR_ID) VALUES
(005,TO_DATE('01/04/18','DD/MM/RR'),'RUPERTINO','REGION DE ATACAMA','VALLENAR',60000000,'23147859-K',04);
INSERT INTO FORMS(NRO_FOLIO,FECH_RECEPCION,NOMBRE_RECEPTOR,REGION,COMUNA,VALOR_VIVIENDA,RUT_ID,CONSULTOR_ID) VALUES
(006,TO_DATE('01/06/20','DD/MM/RR'),'JUAN','METROPOLITANA','MAIPU ',100000000,'16547896-8',05);


--INSERT POSTULANT---
INSERT INTO POSTULANT(rut_id, nombres, primer_apellido,segundo_apellido,nacionalidad,fecha_nac,cod_est_civil,nro_folio,cod_acreditacion,tramo,region_pref,comuna_pref,valor_vivienda,calle,numero,blocke,departamento,Manzana,sitio,region,comuna,localidad,poblacion_villa,telefono_trabajo,telefono_domicilio,telefono_movil,cod_postal,email,ESTADO_CIVIL)
values ('5879032-7','JORGE','GONZALEZ','DIAZ','CHILENA' ,to_date('11/07/1984','DD/MM/YYYY'),05,05,05,'VIVIENDA DE 2800','ARICA PARINACOTA','PUTRE',80000000,'CALLE CRISTOBAL COLON ',4802,'11K','1102F','PUERTE','NORMEN','REGION ARICA PARINACOTA','ARICA','CALOR','NANAIS','77412532','57845232','45800512','000659','JORGITO@GMAIL.COM','VIUDO');

INSERT INTO POSTULANT(rut_id, nombres, primer_apellido,segundo_apellido,nacionalidad,fecha_nac,cod_est_civil,nro_folio,cod_acreditacion,tramo,region_pref,comuna_pref,valor_vivienda,calle,numero,blocke,departamento,Manzana,sitio,region,comuna,localidad,poblacion_villa,telefono_trabajo,telefono_domicilio,telefono_movil,cod_postal,email,ESTADO_CIVIL)
values ('1657692-9','CARLOS','VIDAL','GONZALEZ','CHILENO' ,to_date('23/05/1978','DD/MM/YYYY'),02,02,02,'VIVIENDA DE 3000','METROPOLITANA','LAS CONDES',40000000,'ROSARIO NORTE ',25489,'2356B','23145E','VERDE','NOGAL','REGION METROPOLITANA','PUENTE ALTO','SAN GERONIMO','SAN LAZARO','223145662','21453259','954236152','0004236','C.VIDAL@GMAIL.COM','SOLTERO');
INSERT INTO POSTULANT(rut_id, nombres, primer_apellido,segundo_apellido,nacionalidad,fecha_nac,cod_est_civil,nro_folio,cod_acreditacion,tramo,region_pref,comuna_pref,valor_vivienda,calle,numero,blocke,departamento,Manzana,sitio,region,comuna,localidad,poblacion_villa,telefono_trabajo,telefono_domicilio,telefono_movil,cod_postal,email,ESTADO_CIVIL)
values ('1478932-1','PAMELA','PERZ','MORALES','CHILENA' ,to_date('26/11/1994','DD/MM/YYYY'),03,03,03,'VIVIENDA DE 2000','AYSEN','PUERTO AYSEN',45000000,'CALLE PORVENIR ',4801,'11J','1102D','PLATANO','SITI','REGION METROPOLITANA','SAN JOAKO','PORAGUA','OVALLE','77412543','57845281','45800502','000650','PAME_1@HOTMAIL.COM','DIVORCIADA');
INSERT INTO POSTULANT(rut_id, nombres, primer_apellido,segundo_apellido,nacionalidad,fecha_nac,cod_est_civil,nro_folio,cod_acreditacion,tramo,region_pref,comuna_pref,valor_vivienda,calle,numero,blocke,departamento,Manzana,sitio,region,comuna,localidad,poblacion_villa,telefono_trabajo,telefono_domicilio,telefono_movil,cod_postal,email,ESTADO_CIVIL)
values ('5871963-K','DIEGO','GOMEZ','BLANCO','CHILENA' ,to_date('28/07/1978','DD/MM/YYYY'),04,04,04,'VIVIENDA DE 1600','AYSEN','VALPARAISO',500000,'CALLE PORVENIR ',4801,'11J','1102D','NORMAL','SITE','REGION METROPOLITANA','PUENTE ALTO','LAS NIEVES','NANAI','77412542','57845201','45800500','000659','BIRI@gmail.com','DIVORCIADO');
INSERT INTO POSTULANT(rut_id, nombres, primer_apellido,segundo_apellido,nacionalidad,fecha_nac,cod_est_civil,nro_folio,cod_acreditacion,tramo,region_pref,comuna_pref,valor_vivienda,calle,numero,blocke,departamento,Manzana,sitio,region,comuna,localidad,poblacion_villa,telefono_trabajo,telefono_domicilio,telefono_movil,cod_postal,email,ESTADO_CIVIL)
values ('5879632-7','JORGE','GONZALEZ','DIAZ','CHILENA' ,to_date('11/07/1994','DD/MM/YYYY'),05,05,05,'VIVIENDA DE 2800','ARICA PARINACOTA','PUTRE',80000000,'CALLE CRISTOBAL COLON ',4802,'11K','1102F','PUERTE','NORMEN','REGION ARICA PARINACOTA','ARICA','CALOR','NANAIS','77412532','57845232','45800512','000659','JORGITO@GMAIL.COM','VIUDO');


--INSERT TABLE CIVIL_STATUS_SECTION--
INSERT INTO CIVIL_STATUS_SECTION(COD_EST_CIVIL,DESCRIPCION,PUNTAJE) VALUES (001,'CASADO',60);
INSERT INTO CIVIL_STATUS_SECTION(COD_EST_CIVIL,DESCRIPCION,PUNTAJE) VALUES (002,'CONVIVIENTE',100);
INSERT INTO CIVIL_STATUS_SECTION(COD_EST_CIVIL,DESCRIPCION,PUNTAJE) VALUES (003,'SOLTERO',60);
INSERT INTO CIVIL_STATUS_SECTION(COD_EST_CIVIL,DESCRIPCION,PUNTAJE) VALUES (004,'DIVOCIADO',40);
INSERT INTO CIVIL_STATUS_SECTION(COD_EST_CIVIL,DESCRIPCION,PUNTAJE) VALUES (005,'VIUDO',20);


--INSERT ACCREDITATIONS--
INSERT INTO ACCREDITATIONS(COD_ACREDITACION,CARG_FAMILIAR,ACRED_CAR_FAM,FECH_CAR_FAM,PUE_INDIGENA,ACRED_PUE_INDIG,FECH_PUE_INDIGENA,TITULO,NOM_TITULO,INSTITUCION,ACRED_TITULO,FECH_TITULO,RUT_ID)
VALUES (1,'SI','SI',to_date('20/07/2020','DD/MM/YYYY'),'SI','SI',to_date('12/12/2020','DD/MM/YYYY'),'SI','ELECTRICO','DUOC','SI',to_date('20/06/2019','DD/MM/YYYY'),'1657692-9');
INSERT INTO ACCREDITATIONS(COD_ACREDITACION,CARG_FAMILIAR,ACRED_CAR_FAM,FECH_CAR_FAM,PUE_INDIGENA,ACRED_PUE_INDIG,FECH_PUE_INDIGENA,TITULO,NOM_TITULO,INSTITUCION,ACRED_TITULO,FECH_TITULO,RUT_ID)
VALUES (2,'SI','SI',to_date('20/06/2020','DD/MM/YYYY'),'NO','NO',to_date('12/11/2020','DD/MM/YYYY'),'SI','TECNICO EN REDES','INACAP','SI',to_date('20/05/2000','DD/MM/YYYY'),'5871963-K');
INSERT INTO ACCREDITATIONS(COD_ACREDITACION,CARG_FAMILIAR,ACRED_CAR_FAM,FECH_CAR_FAM,PUE_INDIGENA,ACRED_PUE_INDIG,FECH_PUE_INDIGENA,TITULO,NOM_TITULO,INSTITUCION,ACRED_TITULO,FECH_TITULO,RUT_ID)
VALUES (3,'SI','SI',to_date('20/02/2020','DD/MM/YYYY'),'SI','SI',to_date('14/08/2020','DD/MM/YYYY'),'SI','ANALISTA PROGRAMADOR','DUOC','SI',to_date('20/02/2019','DD/MM/YYYY'),'5879632-7');
INSERT INTO ACCREDITATIONS(COD_ACREDITACION,CARG_FAMILIAR,ACRED_CAR_FAM,FECH_CAR_FAM,PUE_INDIGENA,ACRED_PUE_INDIG,FECH_PUE_INDIGENA,TITULO,NOM_TITULO,INSTITUCION,ACRED_TITULO,FECH_TITULO,RUT_ID)
VALUES (4,'SI','SI',to_date('20/03/2020','DD/MM/YYYY'),'SI','SI',to_date('14/05/2020','DD/MM/YYYY'),'SI','ENFERMERO','DUOC','SI',to_date('20/07/2001','DD/MM/YYYY'),'1478932-1');


---INSERT TABLE SPOUSE--
INSERT INTO SPOUSE (RUT_CONY,FECH_NAC,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,NACIONALIDAD,RUT_ID)
VALUES ('15889525-0',to_date('24/03/1991','DD/MM/YYYY'),'VEGA','VIDAL','PAMELA','CHILENA','5871963-K');
INSERT INTO SPOUSE (RUT_CONY,FECH_NAC,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,NACIONALIDAD,RUT_ID)
VALUES ('21457895-9',to_date('22/03/1991','DD/MM/YYYY'),'INOSTROZA','GONZALEZ','JOSEFINA','CHILENA','5879632-7');


--INSERT TABLE TITULAR_SAVINGS_CTA--
INSERT INTO TITULAR_SAVINGS_CTA(COD_TITULAR_CTA,POSTULANTE,CONYUGE,CIVIL) VALUES(001,'ISAAC','SI','CASADO');
INSERT INTO TITULAR_SAVINGS_CTA(COD_TITULAR_CTA,POSTULANTE,CONYUGE,CIVIL) VALUES(002,'CARLOS','SI','CASADO');
INSERT INTO TITULAR_SAVINGS_CTA(COD_TITULAR_CTA,POSTULANTE,CONYUGE,CIVIL) VALUES(003,'PAMELA','NO','DIVORCIADA');
INSERT INTO TITULAR_SAVINGS_CTA(COD_TITULAR_CTA,POSTULANTE,CONYUGE,CIVIL) VALUES(004,'DIEGO','NO','SOLTERO');
INSERT INTO TITULAR_SAVINGS_CTA(COD_TITULAR_CTA,POSTULANTE,CONYUGE,CIVIL) VALUES(005,'JORGE','NO','VIUDO');



--INSERT TABLE SAVING---
INSERT INTO SAVING(RUT_TITULAR,TIPO_CUENTA,ENT_FINANCIERA,N_CUENTA,FEC_APERTURA,MONTO_AHORRADO,FEC_MANDATO,COD_TITULAR_CTA,RUT_ID)
 VALUES('1862164K','CORRIENTE','BANCO ESTADO','213456HF123',to_date('20/06/2020','DD/MM/YYYY'),10555000,TO_DATE('01/09/2020','DD/MM/YY'),1,'1478932-1'); 
 INSERT INTO SAVING(RUT_TITULAR,TIPO_CUENTA,ENT_FINANCIERA,N_CUENTA,FEC_APERTURA,MONTO_AHORRADO,FEC_MANDATO,COD_TITULAR_CTA,RUT_ID)
 VALUES('18621644','VISTA','BANCO ESTADO','213456HF125',to_date('20/06/2020','DD/MM/YYYY'),11555000,TO_DATE('01/09/2020','DD/MM/YY'),2,'5871963-K');
 INSERT INTO SAVING(RUT_TITULAR,TIPO_CUENTA,ENT_FINANCIERA,N_CUENTA,FEC_APERTURA,MONTO_AHORRADO,FEC_MANDATO,COD_TITULAR_CTA,RUT_ID)
 VALUES('18621645','VISTA','BANCO BCI','213456HF122',to_date('20/07/2020','DD/MM/YYYY'),8500000,TO_DATE('01/09/2020','DD/MM/YY'),3,'5879632-7');
  INSERT INTO SAVING(RUT_TITULAR,TIPO_CUENTA,ENT_FINANCIERA,N_CUENTA,FEC_APERTURA,MONTO_AHORRADO,FEC_MANDATO,COD_TITULAR_CTA,RUT_ID)
 VALUES('18621646','VISTA','BANCO BCI','213456HF129',to_date('20/08/2020','DD/MM/YYYY'),8000000,TO_DATE('01/09/2020','DD/MM/YY'),4,'1657692-9');
   INSERT INTO SAVING(RUT_TITULAR,TIPO_CUENTA,ENT_FINANCIERA,N_CUENTA,FEC_APERTURA,MONTO_AHORRADO,FEC_MANDATO,COD_TITULAR_CTA,RUT_ID)
 VALUES('18621647','VISTA','BANCO EDWARDS','213456HF124',to_date('20/09/2020','DD/MM/YYYY'),11000000,TO_DATE('01/09/2020','DD/MM/YY'),5,'5879032-7');



 
 ---INSERT TABLE FAMILY_RESPONSIBILITIES---
INSERT INTO FAMILY_RESPONSIBILITIES(RUT_CARGA,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,RELACION_POSTUANTE,FECHA_DECLARACION,RUT_ID)
VALUES('200988890','VEGA','MU�OZ','ANTONIA','HIJA',to_date('20/09/2010','DD/MM/YYYY'),'1478932-1');
INSERT INTO FAMILY_RESPONSIBILITIES(RUT_CARGA,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,RELACION_POSTUANTE,FECHA_DECLARACION,RUT_ID)
VALUES('200988894','VIDAL','ROJA','FRANCISCO','HIJO',to_date('20/09/2011','DD/MM/YYYY'),'5871963-K');
INSERT INTO FAMILY_RESPONSIBILITIES(RUT_CARGA,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,RELACION_POSTUANTE,FECHA_DECLARACION,RUT_ID)
VALUES('200988891','VIDAL','ROJAS','CRISTOBAL','HIJO',to_date('20/09/2011','DD/MM/YYYY'),'5879632-7');
INSERT INTO FAMILY_RESPONSIBILITIES(RUT_CARGA,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,RELACION_POSTUANTE,FECHA_DECLARACION,RUT_ID)
VALUES('231773320','VALENZUELA','BLANCO','ANTONIA','HIJO',to_date('20/09/2011','DD/MM/YYYY'),'1657692-9');
INSERT INTO FAMILY_RESPONSIBILITIES(RUT_CARGA,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRES,RELACION_POSTUANTE,FECHA_DECLARACION,RUT_ID)
VALUES('257102510','VALENZUELA','BLANCO','DIEGO','HIJO',to_date('20/09/2010','DD/MM/YYYY'),'5879032-7');



---INSERT TABLE REQUEST---
INSERT INTO REQUEST(N_FOLIO_SOLICITUD,FEC_SOLICITUD,FEC_INSPECCION,ANNO_SUBSIDIO,RUT_ID,PROPIETARIO_RUT_PROP,CONSULTOR_ID) 
VALUES(1,to_date('22/09/2012','DD/MM/YYYY'),to_date('20/10/2011','DD/MM/YYYY'),to_date('20/01/2012','DD/MM/YYYY'),'5879032-7','2314572-6',1);
INSERT INTO REQUEST(N_FOLIO_SOLICITUD,FEC_SOLICITUD,FEC_INSPECCION,ANNO_SUBSIDIO,RUT_ID,PROPIETARIO_RUT_PROP,CONSULTOR_ID) 
VALUES(2,to_date('21/08/2013','DD/MM/YYYY'),to_date('20/11/2012','DD/MM/YYYY'),to_date('20/11/2012','DD/MM/YYYY'),'1657692-9','1657692-9',2);
INSERT INTO REQUEST(N_FOLIO_SOLICITUD,FEC_SOLICITUD,FEC_INSPECCION,ANNO_SUBSIDIO,RUT_ID,PROPIETARIO_RUT_PROP,CONSULTOR_ID) 
VALUES(3,to_date('22/09/2018','DD/MM/YYYY'),to_date('20/10/2011','DD/MM/YYYY'),to_date('20/01/2012','DD/MM/YYYY'),'5879632-7','1478932-1',3);
INSERT INTO REQUEST(N_FOLIO_SOLICITUD,FEC_SOLICITUD,FEC_INSPECCION,ANNO_SUBSIDIO,RUT_ID,PROPIETARIO_RUT_PROP,CONSULTOR_ID) 
VALUES(4,to_date('22/03/2019','DD/MM/YYYY'),to_date('20/10/2011','DD/MM/YYYY'),to_date('20/01/2012','DD/MM/YYYY'),'5871963-K','5871963-K',4);
INSERT INTO REQUEST(N_FOLIO_SOLICITUD,FEC_SOLICITUD,FEC_INSPECCION,ANNO_SUBSIDIO,RUT_ID,PROPIETARIO_RUT_PROP,CONSULTOR_ID) 
VALUES(5,to_date('22/05/2017','DD/MM/YYYY'),to_date('20/10/2011','DD/MM/YYYY'),to_date('20/01/2012','DD/MM/YYYY'),'1478932-1','5879632-7',5);

---INSERT TABLE LIVING_PLACE--
INSERT INTO LIVING_PLACE(ID_VIVIENDA,USADA,DIRECCION,ECONOMICA,PISO,ROL_SII,TIPO_LUGAR,COMUNA,REGION,PROPIETARIO_RUT_PROP)
VALUES ('1','USADA','ROJAS MAGALLANES 2548','SI',2,'123','CENTRICO','LA FLORIDA','METROPOLITANA','2314572-6');
INSERT INTO LIVING_PLACE(ID_VIVIENDA,USADA,DIRECCION,ECONOMICA,PISO,ROL_SII,TIPO_LUGAR,COMUNA,REGION,PROPIETARIO_RUT_PROP)
VALUES ('2','USADA',',APOQUINDO','SI',5,'123','CARCA','LAS CONDES','METROPOLITANA','1657692-9');
INSERT INTO LIVING_PLACE(ID_VIVIENDA,USADA,DIRECCION,ECONOMICA,PISO,ROL_SII,TIPO_LUGAR,COMUNA,REGION,PROPIETARIO_RUT_PROP)
VALUES ('3','NUEVA',',LOS ROSALES 7895','SI',3,'123','MUCHA SOMBRA','LAS CONDES','METROPOLITANA','1478932-1');
INSERT INTO LIVING_PLACE(ID_VIVIENDA,USADA,DIRECCION,ECONOMICA,PISO,ROL_SII,TIPO_LUGAR,COMUNA,REGION,PROPIETARIO_RUT_PROP)
VALUES ('4','USADA',',NUEVO AMANECER','SI',5,'521','ECONOMICO','CAJON DEL MAIPO','METROPOLITANA','5871963-K');
INSERT INTO LIVING_PLACE(ID_VIVIENDA,USADA,DIRECCION,ECONOMICA,PISO,ROL_SII,TIPO_LUGAR,COMUNA,REGION,PROPIETARIO_RUT_PROP)
VALUES ('5','NUEVA','LULIU 542','SI',2,'123','MAS OMENOS','ARICA','ARICA PARINATOCA','5879632-7');


---INSERT TABLE AGE---
INSERT INTO AGE(COD_EDAD,EDAD_MIN,EDAD_MAX,PUNTAJE)VALUES('01',18,29,200);
INSERT INTO AGE(COD_EDAD,EDAD_MIN,EDAD_MAX,PUNTAJE)VALUES('02',30,40,150);
INSERT INTO AGE(COD_EDAD,EDAD_MIN,EDAD_MAX,PUNTAJE)VALUES('03',41,100,100);

----INSERT TABLE SAVING SECTION---
INSERT INTO SAVING_SECTION(COD_MONTO,MONTO_MIN,MONTO_MAX,PUNTAJE)VALUES(001,10000001,1000000000,500);
INSERT INTO SAVING_SECTION(COD_MONTO,MONTO_MIN,MONTO_MAX,PUNTAJE)VALUES(0022,9000000,10000000,400);
INSERT INTO SAVING_SECTION(COD_MONTO,MONTO_MIN,MONTO_MAX,PUNTAJE)VALUES(0033,8000000 ,8999999,200);

---INSERT TABLE SECTION_FAMILY_LOADS---
INSERT INTO SECTION_FAMILY_LOADS(COD_CAR_FAM,CARGAS_MIN,CARGAS_MAX,PUNTAJE)VALUES(0001,5 ,50,200);
INSERT INTO SECTION_FAMILY_LOADS(COD_CAR_FAM,CARGAS_MIN,CARGAS_MAX,PUNTAJE)VALUES(0002,2,4,100);
INSERT INTO SECTION_FAMILY_LOADS(COD_CAR_FAM,CARGAS_MIN,CARGAS_MAX,PUNTAJE)VALUES(0003,0 ,1,50);

--INSERT TABLE INDIGENOUS_SECTION--
INSERT INTO INDIGENOUS_SECTION(COD_INDIGENA,DESCRIPCION,PUNTAJE)VALUES(0.1,'SI' ,500);

---INSERT TABLE SECTION_TITLE---
INSERT INTO SECTION_TITLE(COD_TITULO,DESCRIPCION,PUNTAJE)VALUES(0.1,'PROFESIONAL',200);
INSERT INTO SECTION_TITLE(COD_TITULO,DESCRIPCION,PUNTAJE)VALUES(0.2,'TECNICO',100);