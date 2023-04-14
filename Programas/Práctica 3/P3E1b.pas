program Registros;
type
str20 = string[20];

alumno = record
codigo : integer;
nombre : str20;
promedio : real;
end;

procedure leer(var alu : alumno);
begin
 writeln('Ingrese el codigo del alumno');
 readln(alu.codigo);
 if (alu.codigo <> 0) then begin
  writeln('Ingrese el nombre del alumno'); 
  readln(alu.nombre);
  writeln('Ingrese el promedio del alumno'); 
  readln(alu.promedio);
end;

end;
procedure maximo(var nMax : str20; var pMax: real; nom:str20 ; prom: real );
begin

     if( prom > pMax) then begin
         pMax := prom;
         nMax:=nom;
     end;

end;



var

a : alumno; cant:integer;
nombreMax : str20;
promMax : real;
begin

cant := 0;
promMax := -1;
leer(a);
while( a.codigo <> 0 ) do 
begin
 maximo(nombreMax , promMax, a.nombre, a.promedio );
 cant := cant +1;
 leer(a);
end;

writeln('cant es : ', cant );
writeln('Max alumno : ', nombreMax, ' con el prom :' , promMax:1:2  );
readln();
end.
