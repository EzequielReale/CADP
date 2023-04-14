program P1p2E1a;

var 
i, num, resultado, may5: integer;

BEGIN
  resultado:= 0;
  may5:= 0;
  for i:= 1 to 5 do begin
    writeln('Por favor ingrese un numero entero');
    readln(num);
    if (num > 5) then
      may5:= may5 + 1;
    resultado:= resultado + num;
  end;
  writeln('La suma de los numeros ingresados es = ' ,resultado,' y se ingresaron ',may5,' numeros mayores a 5');	
END.

