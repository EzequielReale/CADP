program JugamosConListas;


type
lista = ^nodo;
nodo = record
num : integer;
sig : lista;
end;


procedure armarNodo(var L:lista; v:integer);
var
  act,ant,aux: lista;
BEGIN
  new(aux);
  aux^.num:= v;
  aux^.sig:= nil;
  if (L = nil) then
    L:= aux
  else begin
    ant:= L;
    act:= L;
    while (L <> nil) and (act^.num < aux^.num) do begin
      ant:= act;
      act:= act^.sig;
    end;
    if (ant = act) then begin
      aux^.sig:= L;
      L:= aux;
    end
    else begin
      ant^.sig:= aux;
      aux^.sig:= act;
    end;
  end;
END;


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
