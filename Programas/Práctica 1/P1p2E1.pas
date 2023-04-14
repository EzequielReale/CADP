program P1p2E1;

var 
i, num, resultado: integer;

BEGIN
  resultado:= 0;
  for i:= 1 to 5 do begin
    writeln('Por favor ingrese un numero entero');
    readln(num);
    resultado:= resultado + num;
  end;
  writeln('La suma de los numeros ingresados es = ' ,resultado,'');	
END.

