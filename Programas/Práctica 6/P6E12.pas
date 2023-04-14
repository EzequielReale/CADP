program P6E12;


type

  celular = record
    version, tam: real;
    ram: integer;
  end;
  
  lista = ^nodo;
  
  nodo = record
    dato: celular;
    sig: lista;
  end;


procedure leer (var C:celular); 
BEGIN
  write('Version de Android: '); readln(C.version);
    if (C.version > 0) then begin
      write('Tamano de pantalla (pulgadas): '); readln(C.tam);
      write('Cantidad de RAM: '); readln(C.ram);
    end;
END;


procedure insertarOrdenado (var L:lista; C:celular);
var
  aux, ant, act: lista;
BEGIN
  new(aux);
  aux^.dato:= C;
  aux^.sig:= nil;
  ant:= L; act:= L;
  while (act <> nil) and (act^.dato.version < aux^.dato.version) do begin
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
END;


procedure cargarCelular (var L:lista);
var
  C: celular;
BEGIN
  leer(C);
  while (C.version > 0) do begin
    insertarOrdenado(L,C);
    leer(C);
  end;
END;


procedure recorrer (L:lista; var cumplen:integer; var tamProm:real);
var
  cantTotal, cantVersion: integer;
  versionActual, tamTotal: real;
BEGIN
  cantTotal:= 0; tamTotal:= 0;
  while (L <> nil) do begin
    versionActual:= L^.dato.version;
    cantVersion:= 0;
    while (L <> nil) and (L^.dato.version = versionActual) do begin
      cantVersion:= cantVersion + 1;
      cantTotal:= cantTotal + 1;
      tamTotal:= tamTotal + L^.dato.tam;
      if (L^.dato.ram > 3) and (L^.dato.tam <= 5) then
        cumplen:= cumplen + 1;
      L:= L^.sig;
    end;
    writeln();
    writeln(cantVersion,' dispositivo/s tienen la version ',versionActual:1:2,' de Android');
  end;
  tamProm:= tamTotal/cantTotal;
END;


var
  L: lista;
  cumplenCondiciones: integer;
  tamanoPromedio: real;
BEGIN
  L:= nil; tamanoPromedio:= 0; cumplenCondiciones:= 0;
  cargarCelular(L);
  recorrer(L,cumplenCondiciones,tamanoPromedio);
  writeln();
  writeln(cumplenCondiciones,' celular/es tienen mas de 3GB de RAM y maximo 5 pulgadas de pantalla');
  writeln();
  writeln('Las pantallas fueron en promedio de ',tamanoPromedio:1:2,' pulgadas');
END.

