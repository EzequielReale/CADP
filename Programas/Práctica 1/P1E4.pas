program P1E4;

var
num1, num2: real;

BEGIN
    num2:= 0;
	writeln('Ingrese un numero real');
	readln(num1);
	while (num2 <> num1 * 2) do
	begin
	  writeln('Ingrese otro numero');
	  readln(num2);
	end;
    writeln('Listo Maquinola');
    readln();
END.

