program P1p2E6;

var 
  codigo, codmin, codmin1, codpar:integer;
  precio, preciomin, preciomin1:real;

BEGIN
  codigo:= 1;
  codmin:= 1;
  codmin1:= 1;
  preciomin:= 32677;
  preciomin1:= 32677;
  codpar:= 0;
  while (codigo >= 1) and (codigo <= 200) do begin;
    writeln('Ingrese el codigo del producto y el precio');
    readln(codigo,precio);
    if (precio < preciomin) then begin
      preciomin1:= preciomin;
      preciomin:= precio;
      codmin1:= codmin;
      codmin:= codigo;
    end
    else 
      if (preciomin < precio) and (precio < preciomin1) then begin
        preciomin1:= precio;
        codmin1:= codigo;
      end;
	if (precio > 16) and (codigo mod 2 = 0) then
	  codpar:= codpar + 1;
  end;
  writeln('Los 2 productos mas baratos tienen codigo ',codmin,' y ',codmin1,'');
  writeln('Hay ',codpar,' productos de mas de $16 con codigo par'); 
END.

