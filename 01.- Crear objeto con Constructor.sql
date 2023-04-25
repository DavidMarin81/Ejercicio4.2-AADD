create or replace type direccion_typ as object (
    -- Atributos
    iddir number,
    calle varchar2(30),
    numero varchar2(20),
    codigo_postal number(5),
    ciudad varchar2(35),
    -- Constructor
    constructor function direccion_typ (
            iddir number, 
            calle varchar2, 
            numero varchar2, 
            ciudad varchar2)
            return self as result
);
/
create or replace type body direccion_typ as
    constructor function direccion_typ (
            iddir number, 
            calle varchar2, 
            numero varchar2, 
            ciudad varchar2)
            return self as result
            as
            begin
                self.iddir := iddir;
                self.calle := calle;
                self.numero := numero;
                self.ciudad := ciudad;
                self.codigo_postal := 00000;
     end;
end;
/