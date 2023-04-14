program P3E7;
type
Laboratorio=record
	nombre:string;
	universidad:string;
	investigadores:integer;
	becarios:integer;
	end;
procedure LeerLaboratorio(var dato:laboratorio);
begin
	write('Investigadores: ');readln(dato.investigadores);
	if(dato.investigadores<>0)then begin
		write('Becarios: ');readln(dato.becarios);
		write('Centro: ');readln(dato.nombre);
		write('universidad: ');readln(dato.universidad);
	end;
end;
procedure Maximo(num:integer;nombre:string;var max:integer;var nombremax:string);
begin
	if(num>max)then begin
		max:=num;
		nombremax:=nombre;
	end;
end;
procedure Minimos1y2(num:integer;nombre:string;var min1,min2:integer;var nombremin1,nombremin2:string);
begin
	if(num<min1)then begin
		min2:=min1;
		nombremin2:=nombremin1;
		min1:=num;
		nombremin1:=nombre
	end
	else if(num<min2)then begin
		min2:=num;
		nombremin2:=nombre;
	end;
end;
var
	centro:laboratorio;
	EnLectura,NombreUniMax,nombrebecamin1,nombrebecamin2:string;
	CentrosxU,centrosxUMax,becamin1,becamin2:integer;
begin
	centrosxumax:=0;becamin1:=32766;becamin2:=32766;
	nombreunimax:='0 CENTROS INGRESADOS';
	nombrebecamin1:='CANTIDAD DE BECARIOS INSUFICIENTE';
	nombrebecamin2:='CANTIDAD DE BECARIOS INSUFICIENTE';
	leerlaboratorio(centro);
	while(centro.investigadores<>0)do begin
		enlectura:=centro.universidad;
		CentrosxU:=1;
		Minimos1y2(centro.becarios,centro.nombre,becamin1,becamin2,nombrebecamin1,nombrebecamin2);
		while((centro.universidad=enlectura)and(centro.investigadores<>0))do begin
			leerlaboratorio(centro);
			if(centro.universidad=enlectura)then
				centrosxu:=centrosxu+1;
			Minimos1y2(centro.becarios,centro.nombre,becamin1,becamin2,nombrebecamin1,nombrebecamin2);
		end;
		writeln('La cantidad de centros pertenecientes a ',enlectura,' fue de ',centrosxu);
		Maximo(centrosxu,enlectura,centrosxumax,nombreunimax);
	end;
	writeln('La Universidad con mas centros fue ',nombreunimax,' con ',centrosxumax,'.');
	writeln('El centro con menos becarios fue ',nombrebecamin1,' con ',becamin1,'.');
	writeln('El segundo centro con menos becarios fue ',nombrebecamin2,' con ',becamin2,'.');
end.
