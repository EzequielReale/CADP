program P1p2E3;

var 
nombre: string; 
nota: real;
aprobados, nota7: integer;

BEGIN
  aprobados:= 0;
  nota7:= 0;
  repeat
    writeln('Ingrese el apellido y nombre del alumno junto a su nota de EPA');
    readln(nombre,nota);
    if (nota >= 8) then
      aprobados:= aprobados + 1;
    if (nota = 7) then
      nota7:= nota7 + 1;
  until (nombre = 'Zidane Zinedine');		
  writeln('',aprobados,' alumnos aprobaron EPA');
  writeln('',nota7,' alumnos sacaron 7');
END.

