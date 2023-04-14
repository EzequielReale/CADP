program Catapumchinpum;

type
  puntero = ^integer;
  vector = array[1..1000] of integer;
  pvector = ^vector;

var
  i: longint;
  v: pvector;

BEGIN
  i:= 0;
  while (true) do begin
    i:= i + 1;
    new(v);
    writeln('Esto se va a la mierda a la ',i);		
  end;
END.

