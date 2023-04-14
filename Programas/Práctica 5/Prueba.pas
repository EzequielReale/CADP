program prueba;

type
aver = record
a: string[20];
b: char;
c: integer;
d: real;
end;

varray = array [1..10] of integer;

punt = ^aver;

lista = ^nodo;

nodo = record
  info: aver;
  sig: lista;
end;

var 
registro: aver;
p: punt;
entero:integer;
letra: char;
reales: real;
palabra: string;
bool: boolean;
ComaFlotante: longint;
V: varray;
L: lista;

BEGIN
new(p); L:= nil;
writeln('entero: ',sizeof(entero) ,' bytes');
writeln('longint: ',sizeof(ComaFlotante) ,' bytes');
writeln('char: ',sizeof(letra) ,' bytes');
writeln('real: ',sizeof(reales) ,' bytes');
writeln('string: ',sizeof(palabra) ,' bytes');
writeln('booleano: ',sizeof(bool) ,' bytes');
writeln('registro (suma de contenidos): ',sizeof(registro) ,' bytes');
writeln('puntero: ',sizeof(p) ,' bytes');
writeln('puntero apunta a registro (mem. dinamica): ',sizeof(p^) ,' bytes');
writeln('Lista (puntero): ',sizeof(L) ,' bytes');
writeln('Lista (puntero apunta a registro): ',sizeof(L^) ,' bytes');
writeln('Vector de 10 enteros: ',sizeof(V) ,' bytes');
writeln('Vector (posicion especifica): ',sizeof(V[2]) ,' bytes');
END.

