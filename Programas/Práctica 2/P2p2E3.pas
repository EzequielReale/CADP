program ejercicio5;

{ suma los números entre a y b, y retorna el resultado en c }

    procedure sumar(a, b: integer; var c : integer);
    
    var
	  suma: integer;
	  
    begin
	  suma := a + b;
	  c := suma;
    end;
    
  var
	result,a, b : integer;
	ok: boolean;
  begin
	result := 0;
	readln(a); readln(b);
	sumar(a, b, result);
	ok:= (result >= 10) and (result <= 30);
	writeln('La suma total es ',result);
	if (not ok) then
	  writeln('La suma no quedo entre 10 y 30');
  end.
