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
    while (L <> nil) and (act^.v < aux^.v) do begin
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
