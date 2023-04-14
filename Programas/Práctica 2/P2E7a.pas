program alcanceYFunciones;
  var
    suma, cant : integer;
	function calcularPromedio : real;
		var
		prom : real;
		begin
			if (cant = 0) then begin
				prom := -1;
				calcularPromedio:= prom;
			end
			else begin
				prom := suma / cant;
				calcularPromedio:= prom;
			end;
		end;
	begin { programa principal }
		readln(suma);
		readln(cant);
		if (calcularPromedio <> -1) then begin
			writeln('El promedio es: ' , calcularPromedio:1:2);
		end
		else
			writeln('Dividir por cero no parece ser una buena idea');
	end.
