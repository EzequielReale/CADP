program Registros;
type
str20 = string[20]; // string -> 255 max

alumno = record
codigo : integer;
nombre : str20;   // String[20] ->  NO!!!! Definir tipo si o sí
promedio : real;
end;

procedure leer(var alu : alumno);
begin
writeln('Ingrese el código del alumno');
readln(alu.codigo);
if (alu.codigo <> 0) then begin
writeln('Ingrese el nombre del alumno'); readln(alu.nombre);
writeln('Ingrese el promedio del alumno'); readln(alu.promedio);
end;

end;
{ declaración de variables del programa principal }
var
a : alumno; cant:integer;

 { cuerporama principal }
begin

cant := 0;
leer(a);
while( a.codigo <> 0 ) do begin 

	cant := cant +1;
	leer(a);

end;

writeln('la cantidad es: ',cant)
end.

