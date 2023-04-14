program P0E3;

var
num1, num2 : real;

BEGIN
  num1:= 0; 
  num2:= 0;
  writeln('Ingrese un numero real');
  readln(num1);
  writeln('Ingrese otro numero real');
  readln(num2);
  writeln('El resultado de dividir ',num1:4:2,' por ',num2:4:2,' es ',num1 / num2:4:2,'');
  readln();
END.

