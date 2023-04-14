program alcanceYFunciones;
  var
    suma, cant : integer;
    
	function calcularPromedio : real;
		begin
			calcularPromedio:= suma/cant;
		end;
		
	begin { programa principal }
		readln(suma);
		readln(cant);
		if (cant <> 0) then
			writeln('El promedio es: ' , calcularPromedio:1:2)
		else
			writeln('Dividir por cero no parece ser una buena idea');
	end.
