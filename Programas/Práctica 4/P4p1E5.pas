program P4p1E5;

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


function maximo (v:vector; dimL:integer):integer;
var
	i,pos,max:integer;
BEGIN
	max:= -32000;
	pos:= -1;
	for i:= 1 to dimL do begin
		if (v[i] > max) then begin
			max:= v[i];
			pos:= i;
		end;
	end;
	Maximo:= pos;
END;


function minimo (v:vector; dimL:integer):integer;
var
	i,pos,min:integer;
BEGIN
	min:= 32000;
	pos:= -1;
	for i:= 1 to dimL do begin
		if (v[i] < min) then begin
			min:= v[i];
			pos:= i;
		end;
	end;
	Minimo:= pos;
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
  min:= minimo(v,dimL);
  max:= maximo(v,dimL);
  intercambio(v,min,max);
  writeln('El elemento maximo ',v[min],' que se encontraba en la posicion ',max,' fue intercambiado con el elemento minimo ',v[max],' que se encontraba en la posicion ',min);
END.

