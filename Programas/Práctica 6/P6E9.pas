function estaOrdenada(L:lista): boolean;
var
  ant: lista;
BEGIN
  ant:= L;
  while (L <> nil) and (ant^.num <= L^.num) do begin
    act:= L;
    L:= L^.sig;
  end;
  estaOrdenada:= (L=nil);
END;


procedure eliminar(var L:lista; v:integer);
var
  ant, act: lista;
BEGIN
  ant:= L; act:= L;
  while (L <> nil) and (act^.num <> v) do begin
  ant:= act;
  act:= act^.sig;
  end;
  if (act <> nil) then begin
    if (ant = act) then begin
      L:= L^.sig;
    end
    else begin 
      ant^.sig:= act^.sig;
    end;
    dispose(act);
  end
  else
    writeln('Ese numero no estaba, pa');
END;


procedure sublista(L:lista; var L2:lista; A,B: integer);
BEGIN
  while (L <> nil) do begin
    if (L^.num > A) and (L^.num < B) then
      armarNodo(L2,L^.num);
      L:= L^.sig;
  end;
END;


procedure sublistaAscendente(L:lista; var L2:lista; A,B: integer);
BEGIN
  while (L <> nil) and (L^.num < B) do begin
    if (L^.num > A) then
      armarNodo(L2,L^.num);
      L:= L^.sig;
  end;
END;


procedure sublistaDescendente(L:lista; var L2:lista; A,B: integer);
BEGIN
  while (L <> nil) and (L^.num > A) do begin
    if (L^.num < B) then
      armarNodo(L2,L^.num);
      L:= L^.sig;
  end;
END;
