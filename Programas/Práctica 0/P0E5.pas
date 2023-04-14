program P0E5;

const
precio= 1.60;

var
caramelos, clientes, resto: integer;
ganancia: real;

BEGIN
  writeln('Ingrese la cantidad de caramelos');
  readln(caramelos);
  writeln('Ingrese la cantidad de clientes');
  readln(clientes);
  resto:= caramelos mod clientes;
  ganancia:= (caramelos * precio) - (resto * precio);
  writeln('Cada cliente compra ',caramelos div clientes,' caramelos y el kiosquero se queda con ',resto,'');
  writeln('Ademas, el kiosquero gana ',ganancia:1:2,' pesos');
  readln()	
END.

