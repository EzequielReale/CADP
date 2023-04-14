program P4p1E9;

const
  dimF = 400;
  
type
  str20 = string[20];
  
  info = record
    inscripcion: integer;
    dni: integer;
    apellido: str20;
    nombre: str20;
    nacimiento: integer;
  end;
  
  vector = array [1..dimF] of info;  
  

procedure leer(var i:info);
BEGIN 
  write('Nro de inscripcion: '); readln(i.inscripcion);
  write('DNI: '); readln(i.dni);
  write('Apellido: '); readln(i.apellido);
  write('Nombre: '); readln(i.nombre);
  write('Anio de nacimiento: '); readln(i.nacimiento);
END;

procedure cargar(var v:vector; var i:info; var dimL:integer);
BEGIN
  dimL:= 0;
  leer(i);
  while (i.dni <> -1) and (dimL < dimF) do begin
    dimL:= dimL + 1;
    v[dimL]:=i;
    leer(i);
  end;
END;
    
function par(dni:integer): boolean;
var
  dig: integer;
  seguir: boolean;
BEGIN
  seguir:= true;
  while (dni <> 0) and (seguir = true) do begin
    dig:=dni mod 10;
    if ((dig mod 2) = 0) then begin
      seguir:= true;
      dni:= dni div 10;
    end
    else
      seguir:= false;
  end;
  if (seguir) then 
  par:= seguir;
END;
    
procedure porcentaje(par:boolean;var cont: integer);
BEGIN
  if (par) then
    cont:= cont + 1;
END;  
    
procedure mayorEdad(apellido,nombre:str20;edad:integer;var maxApellido1,maxNombre1,maxApellido2,maxNombre2:str20; var maxEdad1,maxEdad2:integer);
BEGIN
	if (edad < maxEdad1) then begin
		maxEdad2:= maxEdad1;
		maxApellido2:=maxApellido1;
		maxNombre2:=maxNombre1;
		maxEdad1:= edad;
		maxApellido1:= apellido;
		maxNombre1:=nombre;
	end
	else 
		if (edad < maxEdad2) then begin
			maxEdad2:=edad;
			maxApellido2:=apellido;
			maxNombre2:=nombre;
		end;
END;    
     
procedure programa(v:vector;var cont:integer; var maxApellido1,maxNombre1,maxApellido2,maxNombre2:str20;var maxEdad1,maxEdad2:integer;dimL:integer);
var
  i: integer;
BEGIN
  maxedad1:=2022; maxedad2:=2022; cont:=0;
  for i:= 1 to dimL do begin
    porcentaje(par (v[i].dni),cont);
    mayorEdad (v[i].apellido,v[i].nombre,v[i].nacimiento,maxApellido1,maxNombre1,maxApellido2,maxNombre2,maxEdad1,maxEdad2);
  end;
END;

var 
i: info;
v: vector;
dimL, cont, maxEdad1,maxEdad2: integer;
maxApellido1,maxNombre1,maxApellido2,maxNombre2: str20;
BEGIN
  cargar(v,i,dimL);
  programa(v,cont,maxApellido1,maxNombre1,maxApellido2,maxNombre2,maxEdad1,maxEdad2,dimL);
  writeln ('');
	writeln ('El porcentaje de alumnos con DNI compuesto solo por digitos pares: ',(cont/dimL)*100:2:1);
	writeln ('');
	writeln ('Apellido y nombre de los dos alumnos de mayor edad: ');
	writeln ('');
	writeln ('Alumno 1: ',maxApellido1,' , ',maxNombre1,'.');
	writeln ('');
	writeln ('Alumno 2: ',maxApellido2,' , ',maxNombre2,'.');
END.
