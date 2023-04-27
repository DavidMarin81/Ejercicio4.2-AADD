
-- 05.- Se crean los objetos direccion y persona
direccion := direccion_typ(001, 'Calle Dir', '22', 36207, 'Vigo');
persona := person_dir_typ(001, 'David', 'Marin Gomez', 'david@gmail.com', '666111222', direccion.setDireccion(direccion));

-- 06.- Se crean la tabla PERSON_DIR_OBJ_TABLE
create table PERSON_DIR_OBJ_TABLE of person_dir_typ (
    idno primary key
);

-- 07.- Inserta el objeto en la tabla
insert into PERSON_DIR_OBJ_TABLE values (
    persona
);

-- 08.- Recupera los objetco con un select
SELECT * FROM PERSON_DIR_OBJ_TABLE;
    
    
    

