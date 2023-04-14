program P4E10;


const

  dimF = 300;


type
  
  empresa = array [1..dimF] of real;


procedure leer (var v:empresa; var dimL:integer);
var
  salario: real;
BEGIN
  dimL:= 0;
  write('Ingrese un salario: '); readln(salario);
  while (salario <> 0) and (dimL < dimF) do begin
    dimL:= dimL + 1;
    v[dimL]:= salario;
    write('Ingrese un salario: '); readln(salario);
  end;
END;


procedure incrementar (var v:empresa; dimL:integer; x:real);
var
  i: integer;
BEGIN
  writeln();
  for i:= 1 to dimL do begin
    v[i]:= v[i] + (v[i] * (x / 100));
    writeln('El empleado ',i,' ahora tiene un nuevo salario de: $ ',v[i]:1:2);
  end;
END;


procedure promedio (v:empresa; dimL:integer);
var
  i: integer;
  prom: real;
BEGIN
  prom:= 0;
  for i:= 1 to dimL do begin
    prom:= prom + v[i]; 
  end;
  writeln();
  writeln('El salario promedio de los empleados de la empresa es: $ ',prom/dimL:1:2);
END;


var
  v: empresa;
  dimL: integer;
  x: real;
BEGIN
  leer(v,dimL);
  writeln();
  write('Ingrese el porcentaje que quiere aumentarle el sueldo a sus empleados: '); readln(x);
  incrementar(v,dimL,x);
  promedio(v,dimL);
END.

