program P2p2E9;
procedure numeritos (num: longint; var suma,cant:integer);
var
 aux: integer;
begin
  aux:=0;
  while (num>0) do begin
    aux:= num mod 10;
    suma:= suma+aux;
    num:= num div 10;
    cant:= cant + 1;
  end;
end;
var
  num: longint;
  suma,cant:integer;
begin
  suma:= 0;
  cant:=0;
  writeln ('Ingrese un numero: ');
  readln (num);
  numeritos (num,suma,cant);
  writeln('El numero es: ',num);
  writeln ('La suma del numero es: ',suma);
  writeln ('Los digitos son: ',cant);
end.
