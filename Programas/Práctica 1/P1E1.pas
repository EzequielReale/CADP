program P1E1;

var
num1, num2: integer;

BEGIN
  writeln('Inserte un numero entero');
  readln(num1);
  writeln('Inserte otro numero entero');	
  readln(num2);
  if (num1 > num2) then
    writeln('',num1,' es mayor');
  if (num1 < num2) then
    writeln('',num2,' es mayor');
  if (num1 = num2) then
    writeln('Los numeros leidos son iguales');    
  readln();
END.

