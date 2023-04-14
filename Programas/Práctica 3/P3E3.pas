program P3E3;

type
  escuelas = record
	cue: integer;
	nombre: string;
	docentes: integer;
	alumnos: integer;
	localidad: string;
  end;
  
procedure leer(var e:escuelas);
BEGIN
  write('CUE: '); 
  readln(e.cue);
  write('Nombre del establecimiento: '); 
  readln(e.nombre);
  write('Cantidad de docentes: '); 
  readln(e.docentes);
  write('Cantidad de alumnos: '); 
  readln(e.alumnos);
  write('Localidad: '); 
  readln(e.localidad);
END;

function promedio(e:escuelas):real;
BEGIN
  if (e.docentes <> 0) then
    promedio:= (e.alumnos / e.docentes)
  else
    promedio:= 9999
END;

procedure LaPlata(e:escuelas; prom:real; var cantLaPlata: integer);
BEGIN
  if (e.localidad = 'La Plata') and (prom < 23.435) then
    cantLaPlata := cantLaPlata + 1
END;

procedure mejorprom(e: escuelas; prom: real; var maxcue, maxcue1: integer; var maxprom, maxprom1: real; var maxnom, maxnom1:string);
BEGIN
  if (prom < maxprom) then begin
    maxprom1:= maxprom;
    maxnom1:= maxnom;
    maxcue1:= maxcue;
    
    maxprom:= prom;
    maxnom:= e.nombre;
    maxcue:= e.cue;
  end
    
  else if (prom < maxprom1) and (prom > maxprom) then begin
    maxprom1:= prom;
    maxnom1:= e.nombre;
    maxcue1:= e.cue;
  end;
END;

var 
e: escuelas;
prom, maxprom, maxprom1: real;
i, cantLaPlata, maxcue, maxcue1: integer;
maxnom, maxnom1: string;

BEGIN
  maxprom:= 32000; maxprom1:= 32000; prom:= 0; cantLaPlata:= 0;
  leer(e);
  for i:= 1 to 2400 do begin
    prom:= promedio(e);
    LaPlata(e,prom,cantLaPlata);
    mejorprom(e,prom,maxcue,maxcue1,maxprom,maxprom1,maxnom,maxnom1);
    leer(e);
  end;
    prom:= promedio(e);
    LaPlata(e,prom,cantLaPlata);
    mejorprom(e,prom,maxcue,maxcue1,maxprom,maxprom1,maxnom,maxnom1);
    
	writeln('En La Plata hay ',cantLaPlata,' escuelas con mejor relacion docente alumno que el promedio');
	writeln('Las 2 escuelas con mejor relacion alumno/docente son: ',maxnom,' CUE: ',maxcue,' y ',maxnom1,' CUE: ',maxcue1);
END.

