program P0E1;

var 
num1, num2, suma : integer;

BEGIN
num1:= 0;
num2:= 0;
suma:= 0;	
writeln('Ingrese un numero entero');
readln(num1);
writeln('Ingrese otro numero entero');
readln(num2);
suma:= num1 + num2;
writeln('Se ingreso el valor ',suma,'');
readln(num1);
END.

