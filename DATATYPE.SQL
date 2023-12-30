-- TABELLA DI ESEMPIO PER DEFINIZIONI PER RIFERIMENTO
-- (c) MarkOneTools - www.markonetools.it - 2023

CREATE OR REPLACE TABLE DATATYPE (
	F_CHAR CHAR(10) NOT NULL DEFAULT '' ,
	F_VARCHAR VARCHAR(10) NOT NULL DEFAULT '' ,
	F_DEC DECIMAL(5, 2) NOT NULL DEFAULT 0 ,
	F_NUM NUMERIC(5, 2) NOT NULL DEFAULT 0 ,
	F_SMALLINT SMALLINT NOT NULL DEFAULT 0 ,
	F_INT INTEGER NOT NULL DEFAULT 0 ,
	F_BIGINT BIGINT NOT NULL DEFAULT 0 ,
	F_DATE DATE NOT NULL ,
	F_TIME TIME NOT NULL ,
	F_TIMESTMP TIMESTAMP NOT NULL ,
	F_BOOLEAN BOOLEAN NOT NULL DEFAULT FALSE ,
	F_ROWID ROWID GENERATED ALWAYS )
	RCDFMT RDTYPE ;

LABEL ON TABLE DATATYPE
	IS 'Data types examples' ;

create or replace view DATATYPE_1 as
(select F_CHAR, F_VARCHAR, F_DEC, F_NUM,
        F_SMALLINT, F_INT, F_BIGINT,
        F_DATE, F_TIME, F_TIMESTMP,
        F_BOOLEAN
   from DATATYPE)
 rcdfmt RDTYPE;

label on table DATATYPE_1
	is 'Data types examples (for I/O)' ;
	
create or replace view DATATYPE_2 as
(select F_CHAR,
        char(F_VARCHAR, 5) as F_VARCHAR, -- read only
        F_DEC, F_NUM,
        F_SMALLINT, F_INT, F_BIGINT,
        F_DATE, F_TIME, F_TIMESTMP,
        char(F_BOOLEAN) as F_BOOLEAN,    -- read only
        char(case when F_BOOLEAN = 'TRUE' then 'Y' else 'N' end, 1) F_BOOLEAN1  -- read only
   from DATATYPE)
 rcdfmt RDTYPE;

label on table DATATYPE_2
	is 'Data types examples (for UI)' ;
	
-- data load	
delete from DATATYPE
  where F_CHAR in('D1ABC', 'D2ABC');

insert into DATATYPE_1
 values('D1ABC', 'D1ABC',
        7,12, 7,12,
        1, 4, 5,
        '2023-01-01', '11.11.11', '2023-01-01-11.11.11.000000',
        'TRUE');

insert into DATATYPE_2
 (F_CHAR, F_DEC, F_NUM, F_SMALLINT, F_INT, F_BIGINT, F_DATE, F_TIME, F_TIMESTMP)
 values('D2ABC',
        7,12, 7,12,
        1, 4, 5,
        '2023-01-01', '11.11.11', '2023-01-01-11.11.11.000000');