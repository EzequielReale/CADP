program P3E5;

type
  info = record
    brand, model: string;
    price:real;
  end;

procedure reading(var car:info);
BEGIN
  write('Marca: '); readln(car.brand);
  write('Modelo: '); readln(car.model);
  write('Precio: '); readln(car.price);
END;


function calc(doneXtimes:integer; prom:real):real;
BEGIN
  calc:= prom / doneXtimes;
END;

procedure expensive(car:info; var maxB,maxM:string; var maxP:real);
BEGIN
  if (car.price > maxP) then begin
    maxB:= car.brand;
    maxM:= car.model;
    maxP:= car.price;
  end;
END;


var 
  car: info;
  prom, maxP: real;
  maxB, MaxM, actualBrand: string;
  doneXtimes: integer;
  
BEGIN
  maxP:= -1;
  reading(car);
  while (car.brand <> 'ZZZ') do begin
    prom:= 0;
    doneXtimes:= 0;
    actualBrand:= car.brand;
    while (car.brand <> 'ZZZ') and (actualBrand = car.brand) do begin
      expensive(car,maxB,maxM,maxP);
      prom:= prom + car.price;
      doneXtimes:= doneXtimes + 1;
      reading(car);
    end;
    writeln('El precio promedio de los autos ',actualBrand,' es ',calc(doneXtimes,prom):1:2);
  end;
  writeln('El auto mas caro es el ',maxM,' de ',maxB,' con un precio de ',maxP:1:2);	
END.

