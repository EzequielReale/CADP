program P7E5;

const 
  corte = -1;
  dimF = 100;


type
  rango = 1..dimF;
  
  travel = record
    codViaje: integer;
    codCamion: rango;
    km: real;
    destino: string;
    anio: integer;
    dni: longint;
  end;
 
  lista = ^nodo;
  
  nodo = record
    dato: travel;
    sig: lista;
  end;
  
  camiones = record
    patente: string;
    fabricacion: integer;
    capacidad: real;
    viajes: lista;
  end;  
  
  vcamion = array [rango] of camiones;

  
procedure leerC (var C:camiones);  
BEGIN
  write('Patente del camion: '); readln(C.patente);
  write('Anio de fabriacion del camion: '); readln(C.fabricacion);
  write('Capacidad en toneladas del camion: '); readln(C.capacidad);
END;


procedure leerV (var V:travel);  
BEGIN
  with V do begin
    write('Codigo de viaje: '); readln(codViaje);
    if (codViaje <> -1) then begin
      write('Codigo de Camion: '); readln(codCamion);
      write('Km recorridos: '); readln(km);
      write('Lugar de destino: '); readln(destino);
      write('Anio en que se realizo el viaje: '); readln(anio);
      write('DNI del chofer: '); readln(dni);
    end;
  end;
END;

procedure inicializar (var V:vcamion);
var
  i: integer;
BEGIN
  for i:= 1 to dimF do
    v[i].viajes:= nil;
END;


procedure cargarVector (var V:vcamion);
var
  i:integer;
  C: camiones;
BEGIN
  for i:= 1 to dimF do begin
    leerC(C);
    v[i]:= C;
  end;
END;


procedure agregar (var L:lista; V:travel);
var
  aux: lista;
BEGIN
  new(aux); 
  aux^.dato:= V; 
  aux^.sig:= L;
  L:= aux;
END;


procedure cargarLista (var Vc:vcamion);
var
  V: travel;
BEGIN
  leerV(V);
  while (V.codViaje <> -1) do begin
    agregar(Vc[V.codCamion].viajes,V);
    leerV(V);
  end;
END;


procedure maxmin (km:real; patente:string; var max,min:real; var patMax,patMin: string);
BEGIN
  if (km > max) then begin
    max:= km;
    patMax:= patente;
  end;
  if (km < min) then begin
    min:= km;
    patMin:= patente;
  end;
END;


procedure Cumple2 (capacidad:real; anioF,anioV:integer; var viajesE2:integer);
BEGIN
  if (capacidad > 30.5) and (anioF + 5 < anioV) then
    viajesE2:= viajesE2 + 1;
END;


function impar (dni:longint): boolean;
var
  pares: integer;
BEGIN
  pares:= 0;
  while (dni > 0) do begin
    if (dni mod 2 = 0) then begin
      pares:= pares + 1;
      dni:= dni div 10;
    end;
  end;
  impar:= pares = 0;
END;


procedure recorrerLista (L:lista; var kmTot:real; var viajesE2:integer; capacidad:real; anioF:integer);
BEGIN
  kmTot:= 0;
  while (L <> nil) do begin
    kmTot:= kmTot + L^.dato.km;
    cumple2(capacidad,anioF,L^.dato.anio,viajesE2);
    if (impar(L^.dato.dni)) then
      writeln('El viaje cuyo codigo es ',L^.dato.codViaje,' fue realizado por un chofer de puros numeros impares en su DNI');
    L:= L^.sig;
  end;
END;



procedure recorrerCamiones (V:vcamion; var viajesE2:integer; var patMax,patMin:string);
var
  i: integer;
  max, min, kmTot: real;
BEGIN
  max:= -1; min:= 32000;
  for i:= 1 to dimF do begin
    recorrerLista(V[i].viajes,kmTot,viajesE2,V[i].capacidad,v[i].fabricacion);
    maxmin(kmTot,v[i].patente,max,min,patMax,patMin);
  end;
END;


var
  V:vcamion;
  viajesE2: integer;
  patMax, patMin: string;
BEGIN
  cargarVector(V);
  inicializar(V);
  cargarLista(V);
  recorrerCamiones(V,viajesE2,patMax,patMin);
  writeln('-------------------------------------------------');
  writeln('Mas km recorridos patente: ',patMax,'. Menos km recorridos patente: ',patMin);
  writeln(viajesE2,' viajes se han realizado en camiones de mas de 30,5 toneladas con mas de 5 anios de antiguedad');
END.





