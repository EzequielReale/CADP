program P1E7;
var
codigo: integer;
precio1, precio2, porcentaje: real;
BEGIN   
    repeat
		writeln('Ingrese primero el codigo del producto');
  		readln(codigo);
		writeln('Ingrese el precio anterior del producto');
		readln(precio1);
		writeln('Ingrese el nuevo precio');
		readln(precio2);
		porcentaje:= (precio2 - precio1) / precio2 * 100;
		writeln('El porcentaje de aumento del precio es: ',porcentaje:1:1,'%');
		if (porcentaje > 10) then writeln('El aumento de precio del producto nro ',codigo,' supera el 10%')
		else writeln('El aumento de precio del producto nro ',codigo,' NO supera el 10%');
	until (codigo = 32767);
END.