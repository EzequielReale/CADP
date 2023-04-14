program P2E6;

procedure leer;
var num, max: integer ;

BEGIN
  max:= 0;
  writeln('Escriba un numero entero');
  readln(num);
  while (num > -1) do
  begin
    writeln('Escriba un numero entero');
    readln(num);
    if (num > max) and (num mod 2 = 0) then
      max:= num;
  end;
  writeln('El numero par mas grande fue ',max);
END;

BEGIN
  leer;	
END.

