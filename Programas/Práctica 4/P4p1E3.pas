program P4p1E3;

const
  dimL = 10;

type
  vectorcito = array [1..dimL] of integer;


procedure taskA(var v:vectorcito);
var
i: integer;

BEGIN {Realizar un módulo que imprima el vector desde la primera posición hasta la última.}
  for i:= 1 to dimL do
    writeln(v[i]);
END;


procedure taskB(var v:vectorcito);
var
i: integer;

BEGIN {Realizar un módulo que imprima el vector desde la última posición hasta la primera.}
  for i:= dimL downto 1 do
    writeln(v[i]);
END;


procedure taskC(var v:vectorcito);
var
i: integer;

BEGIN {Realizar un módulo que imprima el vector desde la mitad (dimL DIV 2) hacia la primera posición, y desde la mitad más uno hacia la última posición.}
  for i:= (dimL div 2) downto 1 do
    writeln(v[i]);
  for i:= ((dimL div 2) + 1) to dimL do
    writeln(v[i]);
END;


procedure taskD(var v:vectorcito; x,y:integer);
var
i: integer;

BEGIN {Realizar un módulo que reciba el vector, una posición X y otra posición Y, e imprima el vector desde la posición X hasta la Y. Asuma que tanto X como Y son menores o igual a la dimensión lógica. Y considere que, dependiendo de los valores de X e Y, podría ser necesario recorrer hacia adelante o hacia atrás.}
  writeln('Dele valor a X e Y'); readln(x,y);
  if (x < y) then begin
    for i:= x to y do
      writeln(v[i]);   
  end
  else
    if (x > y) then begin
      for i:= x downto y do
        writeln(v[i]);
    end;
END;


procedure taskEa(var v:vectorcito);
var
x,y: integer;

BEGIN {Utilizando el módulo implementado en el inciso anterior, vuelva a realizar el inciso a.}
  x:= 1; y:= dimL;
  taskD(v,x,y);
END;


procedure taskEb(var v:vectorcito);
var
x,y: integer;

BEGIN {Utilizando el módulo implementado en el inciso anterior, vuelva a realizar el inciso b.}
  x:= dimL; y:= 1; 
  taskD(v,x,y);
END;


procedure taskEc(var v:vectorcito);
var
x,y: integer;

BEGIN {Utilizando el módulo implementado en el inciso anterior, vuelva a realizar el inciso c.}
  x:= dimL div 2; y:= 1;
  taskD(v,x,y);
  x:= ((dimL div 2) + 1); Y := dimL;
  taskD(v,x,y);

END;


var 
  v: vectorcito;
  x, y: integer;

BEGIN
  taskA(v);
END.

