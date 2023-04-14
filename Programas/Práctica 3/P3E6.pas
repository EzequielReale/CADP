program P3E6;

type
  info = record
    marca: string;
    linea:string;
    cores:integer;
    reloj:real;
    transistores:integer;
  end;


procedure leer(var mp:info);
BEGIN
  writeln('Escriba la marca y la linea del procesador');
  readln(mp.marca); readln(mp.linea);
  writeln('Escriba la cantidad de cores y transistores');
  readln(mp.cores); readln(mp.transistores);
  writeln('Escriba la velocidad del reloj');
  readln(mp.reloj);
END;


procedure parte1(var listado:string; mp:info);
BEGIN
  if (mp.cores>2) and (mp.transistores<=22) then begin
    listado+= mp.marca;
    listado+= ' ';
    listado+= mp.linea;
    listado+= ', ';
  end;
END;


procedure son14(var cant14nm:integer; mp:info);
BEGIN;
  if (mp.transistores = 14) then
    cant14nm:= cant14nm + 1
END;


procedure parte2(var max,max1,marcaActual: string ;mp:info; cant14nm: integer; var maxT,maxT1: integer);
BEGIN
  if (cant14nm > maxT) then begin
    maxT1:= maxT;
    max1:= max;
    maxT:= cant14nm;
    max:= marcaActual;
  end
  else
    if (cant14nm > maxT1) and (cant14nm < maxT) then begin
      maxT1:= cant14nm;
      max1:= marcaActual;
    end;
END;


procedure parte3(var cant2ghz:integer; mp:info);
BEGIN
  if (mp.cores > 1) and (mp.reloj >= 2) and ((mp.marca = 'Intel') or (mp.marca = 'AMD')) then
      cant2ghz:= cant2ghz + 1
END;


var 
  mp: info;
  listado, marcaActual, max, max1:string;
  cant2ghz, cant14nm, maxT, maxT1:integer;
BEGIN
  cant2ghz:= 0; cant14nm:= 0;
  leer(mp);
  while (mp.cores <> 0) do begin
    parte2(max,max1,marcaActual,mp,cant14nm,maxT,maxT1);
    marcaActual:= mp.marca; 
    cant14nm:= 0;
    while (mp.cores <> 0) and (marcaActual = mp.marca) do begin 
      parte1(listado,mp);
      son14(cant14nm,mp);
      parte3(cant2ghz,mp);
      leer(mp);
    end;
  end;   	
  writeln('La marca y linea de todos los procesadores con mas de 2 cores y transistores de maximo 22nm es: ',listado);
  writeln('Las 2 marcas con mayor cantidad de procesadores con transistores de 14nm son: ',max,' y ',max1);
  writeln('La cantidad de multicores de Intel o AMD con velocidad de reloj de al menos 2ghz es: ',cant2ghz);
END.
