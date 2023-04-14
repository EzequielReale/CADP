program P4p1E6;

const
  dimF = 100;
  
type
  vector = array [1..100] of integer;


procedure Leer(var v:vector; var dimL:integer);
var
  num:integer;
BEGIN
  dimL:= 1;
  write('Escriba un numero: ');
  readln(num);
  while (dimL < dimF) and (num <> 0) do begin
    v[dimL]:= num;
    dimL:= dimL + 1;
    write('Escriba un numero: ');
    readln(num);
  end;
END;


procedure maxmin (v:vector; dimL:integer; var posmax,posmin:integer);
var
  i,max, min: integer;
BEGIN
	max:= -32000; min:= 32000; posmax:= -1; posmin:= -1;
	for i:= 1 to dimL do begin
		if (v[i] > max) then begin
			max:= v[i];
			posmax:= i;
		end;
		if (v[i] < min) then begin
			min:= v[i];
			posmin:= i;
		end;
	end;
END;


procedure intercambio (var v:vector; var min,max:integer);
var
  aux:integer;
BEGIN	
  aux:= v[min];
  v[min]:= v[max];
  v[max]:= aux;
END;



var 
v: vector;
dimL, min, max: integer;


BEGIN
  Leer(v,dimL);
  maxmin(v,dimL,max,min);
  intercambio(v,min,max);
  writeln('El elemento maximo ',v[min],' que se encontraba en la posicion ',max,' fue intercambiado con el elemento minimo ',v[max],' que se encontraba en la posicion ',min);
END.

