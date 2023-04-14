program P7E3;

type
  viaje = record
    num: integer;
    cod: integer;
    origen: string;
    destino: string;
    km: real;
  end;
  
  lista = ^nodo;
  
  nodo = record
    dato: viaje;
    sig: lista;
  end;


procedure leer (var V:viaje);
BEGIN
    write('Codigo de auto: '); readln(V.cod);
    write('Numero de viaje: '); readln(V.num);
    write('Direccion de origen: '); readln(V.origen);
    write('Direccion de destino: '); readln(V.destino);
    write('Kilometros recorridos: '); readln(V.km);
END;

{procedure agregarAtras (var L,ult:lista; V:viaje);
var
aux: lista;
BEGIN
  new(aux); aux^.dato:= V; aux^.sig:= nil;
  if (L = nil) then begin
    aux^.sig:= L;
    L:= aux;
  end
  else begin
    ult^.sig:= aux;
    ult:= aux;
  end;
END;
}

procedure InsertarOrdenado (var L:lista; V:viaje);
var
ant, act, aux: lista;
BEGIN
  new(aux); aux^.dato:= V; aux^.sig:= nil; ant:= L; act:= L;
  while (act <> nil) and (act^.dato.num < V.num) do begin
    ant:= act;
    act:= act^.sig;
  end;
  if (act = nil) then begin
    aux^.sig:= L;
    L:= aux;
  end
  else begin
    ant^.sig:= aux;
    aux^.sig:= act;
  end;
END;


procedure cargarLista (var L:lista);
var
V: viaje;
BEGIN
  leer(V);
  while (V.cod <> 0) do begin   //provisorio
    insertarOrdenado(L,V);
    leer(V);
  end;
END;


procedure maximos (cod:integer; km:real; var codmax1,codmax2: integer; var max1,max2:real);
BEGIN
  if (km > max1) then begin
    max2:= max1;
    codmax2:= codmax1;
    max1:= km;
    codmax1:= cod;
  end
  else if (km < max1) and (km > max2) then begin
    max2:= km;
    codmax2:= cod;
  end;
END;

 
procedure recorrerLista(L:lista; var L2:lista; var codmax1,codmax2:integer);
var
  max1, max2, kmTot: real;
  codActual: integer;
BEGIN
  max1:= -1; max2:= -1; 
  while (L <> nil) do begin
    codActual:= L^.dato.cod;
    kmTot:= 0;
    while (L <> nil) and (codActual = L^.dato.cod) do begin
      kmTot:= kmTot + L^.dato.km;
      if (kmTot > 5) then
        insertarOrdenado(L2,L^.dato);
      L:= L^.sig;
    end;    
    maximos(codActual,kmTot,codmax1,codmax2,max1,max2);
  end;
END;


var
  L, L2: lista;
  codmax1, codmax2: integer;
BEGIN
  L:= nil;
  cargarLista(L);
  L2:= nil;
  recorrerLista(L,L2,codmax1,codmax2);
  writeln('El auto con codigo ',codmax1,' fue el que mas km recorrio, seguido del auto con codigo ',codmax2);
END.

