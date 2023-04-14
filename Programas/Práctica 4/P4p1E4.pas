program P4p1E4;

type
  vector = array [1..100]of integer;

function posicion(x:integer; v:vector):integer;
var
  pos:integer;
BEGIN
  pos:=1;
  while (x <> v[pos]) and (pos < 100) do
    pos:= pos + 1;
  if (x = v[pos]) then
    posicion:= pos
  else
    posicion:= -1;
END;


procedure intercambio (var v:vector;X,Y:integer);
var
  aux:integer;
BEGIN	
  aux:= v[X];
  v[X]:= v[Y];
  v[Y]:= aux;
END;


function sumaVector(v:vector): integer;
var
  suma,i: integer;
BEGIN
  suma:= 0;
  for i:= 1 to 100 do
    suma:= suma + v[i];
  sumaVector:= suma;
END;


function promedio(v:vector): real;
var
  suma:integer;
BEGIN
  suma:= sumaVector(v);
  promedio:= suma / 100;
END;


function Maximo (v:vector):integer;
var
	i,pos,max:integer;
BEGIN
	max:= -32000;
	pos:= -1;
	for i:= 1 to 100 do begin
		if (v[i] > max) then begin
			max:= v[i];
			pos:= i;
		end;
	end;
	Maximo:= pos;
END;


function Minimo (v:vector):integer;
var
	i,pos,min:integer;
BEGIN
	min:= 32000;
	pos:= -1;
	for i:= 1 to 100 do begin
		if (v[i] < min) then begin
			min:= v[i];
			pos:= i;
		end;
	end;
	Minimo:= pos;
END;



var 
  v:vector;


BEGIN
	
	
END.

