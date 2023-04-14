program P7E1;


const
  corte = 33555444;
  
  dimF = 5;


type
  rango = 1..5;
  
  str = string[20];
  
  genero = array [rango] of integer;
  
  actores = record
    dni: longint;
    apellido: str;
    nombre: str;
    edad: integer;
    cod: rango;
  end;
  
  lista = ^nodo;
  
  nodo = record
    dato: actores;
    sig: lista;
  end;


procedure inicializar (var v:genero);
var
  i: integer;
BEGIN
  for i:= 1 to dimF do
    v[i]:= 0
END;


procedure leer (var A:actores; var v:genero);
BEGIN
  write('DNI: '); readln(A.dni);
  if (A.dni <> corte) then begin
    write('Apellido: '); readln(A.apellido);
    write('Nombre: '); readln(A.nombre);
    write('Edad: '); readln(A.edad);
    write('Codigo de genero de actuacion: '); readln(A.cod);
    v[A.cod]:= v[A.cod] + 1;
  end;
END;


procedure insertarOrdenado (var L:lista; A:actores);
var
  ant, act, aux: lista;
BEGIN
  new(aux); aux^.dato:= A; aux^.sig:= nil; ant:= L; act:= L;
  while (act <> nil) and (act^.dato.dni < A.dni) do begin
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


procedure cargarLista (var L:lista; var A:actores; var v:genero);
BEGIN
  leer(A,v);
  while (A.dni <> corte) do begin
    insertarOrdenado(L,A);
    leer(A,v);
  end;
END;


procedure descomponer(num:integer; var pares,impares:integer);
BEGIN
  pares:= 0; impares:= 0;
    while (num <> 0) do begin
      if ((num mod 2) = 0) then
        pares:= pares + 1
      else
        impares:= impares + 1;
      num:= num div 10;
    end;
END;


function masPares (num:integer): boolean;
var
pares, impares: integer;
BEGIN
  descomponer(num,pares,impares);
  maspares:= pares > impares;
END;


procedure maximos (v:genero; var codmax1, codmax2:rango);
var
max1, max2, i: integer;
BEGIN
  max1:= -1; max2:= -1;
  for i:= 1 to dimF do begin
    if (v[i] > max1) then begin
      max2:= max1;
      codmax2:= codmax1;
      max1:= v[i];
      codmax1:= i;
    end
    else if (v[i] < max1) and (v[i] > max2) then begin
      max2:= v[i];
      codmax2:= i
    end;
  end;
END;


procedure eliminar (var L: lista; x:integer);
var
ant, act: lista;
BEGIN
  act:= L;
  while (act <> nil) and (act^.dato.dni < x) do begin
    ant:= act;
    act:= act^.sig;  
  end;
  if (act <> nil) and (act^.dato.dni = x) then begin
    if (act = L) then
      L:= L^.sig
    else
      ant^.sig:= act^.sig;
    dispose(act);
    writeln('Done');
  end
  else
    writeln('Ese DNI no existe en el sistema');
END;


procedure recorrer (L:lista; var cantPares: integer);
BEGIN
  cantPares:= 0;
  while (L <> nil) do begin
    if (masPares(L^.dato.dni)) then
      cantPares:= cantPares + 1;
    L:= L^.sig;
  end;
END;


var
  A: actores;
  L: lista;
  x, cantPares: integer;
  codmax1, codmax2: rango;
  v: genero;
BEGIN
  cargarLista(L,A,v);
  maximos(v,codmax1,codmax2);
  recorrer(L,cantPares);
  writeln(cantPares,' personas tenian mas numeros pares que impares en su DNI');
  writeln();
  writeln('Los 2 codigos de genero mas leidos fueron ',codmax1,' y ',codmax2);
  writeln();
  write('Ingrese un DNI a eliminar del sistema: '); readln(x);
  eliminar(L,x);
END.

