program P3E8;

type
  docente=record
    DNI:integer;
    nombre:string;
    apellido:string;
    mail:string;
  end;
  proyecto=record
    codigo:integer;
    titulo:string;
    doc:docente;
    alumnos:integer;
    escuela:string;
    localidad:string;
  end;
  
 procedure leerDocente(var d:docente);
  begin
    with d do
     begin
       write('Ingrese DNI del docente ');readln(DNI);
       write('Ingrese nombre del docente ');readln(nombre);
       write('Ingrese apellido del docente ');readln(apellido);
       write('Ingrese mail del docente ');readln(mail);
     end;
  end; 
  
procedure leerProyecto(var p:proyecto);
 begin
   with p do 
     begin
       write('Ingrese codigo del proyecto ');readln(codigo);
       if (codigo<>-1)then begin
         write('Ingrese titulo ');readln(titulo);
         leerDocente(doc);
         write('Ingrese cantidad de alumnos ');readln(alumnos);
         write('Ingrese nombre de la escuela ');readln(escuela);
         write('Ingrese localidad ');readln(localidad);
        end;
     end;
 end;     

procedure maximos(num:integer;nombre:string; var max1,max2:integer;var nom1,nom2:string);
begin
  if (num>max1)then begin
    max2:=max1;
    max1:=num;
    nom2:=nom1;
    nom1:=nombre;
   end
  else
   if (num>max2)then begin
     max2:=num;
     nom2:=nombre;
   end;
end;

function igualParesImpares (cod:integer):boolean;
 var
   pares,impares,dig:integer;
 begin
   pares:=0;
   impares:=0;
   while (cod<>0)do
     begin
       dig:=cod MOD 10;
       if (dig MOD 2=0)then
         pares:=pares+1
       else
         impares:=impares+1;
       cod:= cod DIV 10;
     end;
    igualParesImpares:=(pares=impares);
 end;
 
var
  pr:proyecto;
  cantEscuelasTotales,cantEscLocalidad,alumnosTotales,max1,max2:integer;
  auxLocalidad,auxEscuela,nomMax1,nomMax2:string;
begin
  max1:=0;
  nomMax1:=' ';
  nomMax2:=' ';
  cantEscuelasTotales:=0;
  leerProyecto(pr);
  while (pr.codigo<>-1)do
    begin
      if((pr.localidad='Daireaux')and(igualParesImpares(pr.codigo)))then
        writeln('El proyecto ',pr.titulo,' es de Daireaux y tiene codigo con igual cantidad de digitos pares e impares');
        
      auxLocalidad:=pr.localidad;
      cantEscLocalidad:=0;
      while((auxLocalidad=pr.localidad)and (pr.codigo<>-1))do
        begin {dentro estan los proyectos de la MISMA LOCALIDAD}
          auxEscuela:=pr.escuela;
          cantEscuelasTotales:=cantEscuelasTotales+1;{suma aca y no antes del while porque puede haber mas de una escuela por localidad} 
          alumnosTotales:=0;
          cantEscLocalidad:=cantEscLocalidad+1; 
          while ((auxLocalidad=pr.localidad)and (pr.codigo<>-1)and(auxEscuela=pr.escuela))do
            begin       {dentro estan los proyectos de la MISMA ESCUELA}
              alumnosTotales:=alumnosTotales+pr.alumnos;
                     
              leerProyecto(pr);
            end;
          maximos(alumnosTotales,pr.escuela,max1,max2,nomMax1,nomMax2);
        end;
      writeln('Son ',cantEscLocalidad,' escuelas de la localidad de ',auxLocalidad);
    end;
  writeln('Cantidad de escuelas analizadas ',cantEscuelasTotales);
  writeln('Nombres de las escuelas con mayor cantidad de alumnos participantes ',nomMax1,' y ',nomMax2);
end.
