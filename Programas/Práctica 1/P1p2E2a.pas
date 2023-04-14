program P1p2E2;


var 
i, num, max, pos, pos_max: integer;

BEGIN
  pos:= 1;
  pos_max:= 1;
  writeln('Ingrese un numero');
    readln(max);
  for i:= 1 to 9 do begin
    writeln('Ingrese un numero');
    readln(num);
    pos:= pos + 1;
  	if (num > max) then begin
  	  max:= num;
  	  pos_max:= pos;
  	end;
  end;
  writeln('El mayor numero leido fue el: ',max,' en la posicion ',pos_max,'');
END.
