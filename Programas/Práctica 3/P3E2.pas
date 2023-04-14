program P3E2;

type
  dias = 1..31;
  meses = 1..12;
  fecha = record
    dia: dias;
    mes: meses;
    anio: integer;
  end;

procedure Leer(var f:fecha);
BEGIN
  writeln('Ingrese el anio');
  readln(f.anio);
  writeln('Ingrese el mes');
  readln(f.mes);
  writeln('Ingrese el dia');
  readln(f.dia);
END;  

function verano(f:fecha):boolean;
BEGIN
  verano:= (f.mes<=3);
END;

function diezdias(f:fecha):boolean;
BEGIN
  diezdias:= (f.dia<=10);
END;

var 
  f: fecha;
  tendays, summer: integer;
BEGIN	
  summer:= 0; tendays:= 0;
  
  Leer(f);
  
  while (f.anio <> 2020) do begin
    if verano(f) then
      summer:= summer + 1;
    if diezdias(f) then
      tendays:= tendays + 1;
    Leer(f);
  end;
  
  writeln('se produjeron ',summer,' matrimonios en verano y ',tendays,' en los primeros 10 diaz del mes');
END.

