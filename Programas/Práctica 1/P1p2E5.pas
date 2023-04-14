program P1p2E5;

var 
  num,max,min,suma: integer;
begin
  suma:= 0;
  min:= 32677;
  max:= -32678;
  repeat
    writeln('Escriba un numero');
    read(num);
    if num > max then
      max:=num;
    if num < min then
      min:=num;
    suma := suma + num;
  until (num = 100);
  writeln('El numero maximo leido es: ',max);
  writeln('El numero minimo leido es: ',min);
  writeln('La suma total de los numeros leidos es de: ',suma);
  readln();
end.
