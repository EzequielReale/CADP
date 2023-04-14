program P1p2E2;

var 
i, num, max: integer;

BEGIN
  writeln('Ingrese un numero');
    readln(max);
  for i:= 1 to 9 do begin
    writeln('Ingrese un numero');
    readln(num);
  	if (num > max) then
  	  max:= num;
  	end;
  writeln('El mayor numero leido fue el: ',max);
END.

