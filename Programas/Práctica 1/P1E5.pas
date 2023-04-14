program P1E5;

var
num1, num2: real;
introducidos: integer;

BEGIN
    num2:= 0;
    introducidos:= 0;
	writeln('Ingrese un numero real');
	readln(num1);
	while (num2 <> num1 * 2) and (introducidos < 10) do
	begin
	  writeln('Ingrese otro numero');
	  readln(num2);
	  introducidos:= introducidos + 1;
	end;
    writeln('Listo Maquinola');
    readln();
END.

