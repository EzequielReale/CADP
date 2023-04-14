program P2p2E8;

  procedure minimos (codigo: integer; var mincod, mincod1: integer; precio: real; var minpre, minpre1:real);
  BEGIN
    if (precio<minpre) then begin
      minpre1:= minpre;
      minpre:= precio;
      mincod1:= mincod;
      mincod:= codigo;
    end
    else if (precio>minpre) and (precio<minpre1) then begin
      minpre1:= precio;
      mincod1:= codigo;
    end;
  END;

  procedure maximo (codigo: integer; var maxcod: integer; precio: real; var maxpre:real; tipo: string);
  BEGIN
    if (precio>maxpre) and (tipo = 'pantalon') then begin
      maxpre:= precio;
      maxcod:= codigo;
    end
  END;

  var
  i, codigo, mincod, mincod1, maxcod: integer;
  precio, minpre, minpre1, maxpre, prom: real;
  tipo: string;

  BEGIN
    minpre:= 32767; minpre1:= 32767; maxpre:= -32768; prom:= 0;
    for i:= 1 to 100 do begin
	  writeln('ingrese el codigo del producto, el tipo y el precio');
	  readln(codigo);
      readln(tipo);
	  readln(precio);
	  minimos(codigo,mincod,mincod1,precio,minpre,minpre1);
	  maximo(codigo,maxcod,precio,maxpre,tipo);	
	  prom:= prom + precio;  
	end;
	
	writeln('Los 2 productos mas baratos tienen codigo ',mincod,' y ',mincod1);
	writeln('El codigo del pantalon mas caro es ',maxcod);
	writeln('El precio promedio de los productos es ',(prom/100):1:2); 
  END.

