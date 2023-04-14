program JugamosConListas;


type
lista = ^nodo;
nodo = record
num : integer;
sig : lista;
end;


procedure armarNodo(var L: lista; v: integer);
var
aux : lista;
begin
new(aux);
aux^.num := v;
aux^.sig := L;
L := aux;
end;


procedure incrementarLista(L: lista; num: Integer);
begin
  while (L <> Nil) do begin
    L^.num:= L^.num + num;  // incrementa el valor obtenido
    L:= L^.sig;
  end;
end;


procedure imprimirLista (L:lista);  // imprime numeros guardados
begin
  while (L <> Nil) do begin
    WriteLn('El numero: ',L^.num);
    L:= L^.sig;
  end;
end;


var
pri : lista;
valor : integer;


begin
pri := nil;
writeln('Ingrese un numero');
read(valor);
while (valor <> 0) do begin
armarNodo(pri, valor);
writeln('Ingrese un numero');
read(valor);
incrementarLista(pri,valor);
end;
imprimirLista(pri);
end.
