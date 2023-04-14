program P6E11;

type

  alumno = record
    num: integer;
    apellido: string;
    nota: real;
  end;
  
  lista = ^nodo;
  
  nodo = record
    dato: alumno;
    sig: lista;
  end;


procedure leer(var A:alumno);
BEGIN
  write('Numero del alumno: '); readln(A.num);
  if (A.num <> 0) then begin
    write('Apellido del alumno: '); readln(A.apellido);
    write('Nota del alumno: '); readln(A.nota);
  end;
END;


procedure insertarOrdenado (var L:lista; A:alumno);
var
  aux, ant, act: lista;
BEGIN
  new(aux);
  aux^.dato:= A;
  aux^.sig:= nil;
  if (L = nil) then
    L:= aux
  else begin
    ant:= L;
    act:= L;
    while (act <> nil) and (act^.dato.nota > aux^.dato.nota) do begin
      ant:= act;
      act:= act^.sig;
    end;
    if (ant = act) then begin
      aux^.sig:= L;
      L:= aux;
    end
    else begin
      ant^.sig:= aux;
      aux^.sig:= act
    end;
  end;
END;


procedure cargarLista(var L:lista);
var
  A: alumno;
BEGIN
  leer(A);
  while (A.num <> 0) do begin
    insertarOrdenado(L,A);
    leer(A);
  end;
END;


procedure imprimirMejores (L:lista);
var
  i: integer;
BEGIN
  writeln('Los 10 mejores promedios en orden son:');
  writeln();  
  for i:= 1 to 10 do begin   
    writeln(L^.dato.apellido,' con nota ',L^.dato.nota:1:2);
    L:= L^.sig;
  end;
END;


var
  L: lista;
BEGIN
  L:= nil;
  cargarLista(L);
  imprimirMejores(L);		
END.

