CREATE OR REPLACE TYPE person_dir_typ AS OBJECT (
  idno           NUMBER,
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25),
  email          VARCHAR2(25),
  phone          VARCHAR2(20),
  direccion      direccion_typ,
  MAP MEMBER FUNCTION get_idno RETURN NUMBER, 
  MEMBER PROCEDURE display_details ( SELF IN OUT NOCOPY person_dir_typ )
  );
/

CREATE OR REPLACE TYPE BODY person_dir_typ AS
    MAP MEMBER FUNCTION get_idno RETURN NUMBER AS
            BEGIN
                RETURN idno;
            END;
    MEMBER PROCEDURE display_details ( SELF IN OUT NOCOPY person_dir_typ ) AS
            BEGIN
                DBMS_OUTPUT.PUT_LINE(TO_CHAR(idno) || ' ' || first_name || ' ' || last_name);
                DBMS_OUTPUT.PUT_LINE(email || ' '  || phone);
            END;  
END;
/