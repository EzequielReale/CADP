procedure agregarAtras(var L,ult:lista; n:nodo);
var
  aux:lista;
BEGIN
  new(aux);
  aux^.num:= n;
  aux^:= nil;
  if (L = nil) then
    L:= aux
  else
    ult^.sig:=aux;
  ult^.:= aux
END;

procedure armarNodo(var Pi,Pf:lista; v:integer);
var
	aux,nuevo : lista; 
BEGIN
	new(nuevo); nuevo^.num := v; nuevo^.sig := nil; 
	if(Pi = nil)then 
	begin
		Pi:= nuevo; // asigno al puntero inicial la dirección del nuevo elemento.
		Pf:= nuevo;//asigno al puntero final la dirección del nuevo elemento.
	end
	else
	begin
       Pf^.sig := nuevo;//actualizo como siguiente del puntero final al nuevo elemento  
       Pf := nuevo;   //actualizo la dirección del puntero final
	end;
END;
