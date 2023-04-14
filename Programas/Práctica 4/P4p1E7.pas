program P4p1E7;
 type
    rango=0..9;
    digitos=array[rango]of integer;
 
 procedure inicializar(var dig:digitos);
  var
     i:integer;
  begin
     for i:=0 to 9 do
       dig[i]:=0;
  end;
  
 procedure descomponer(var d:digitos;num:integer);  {es un vector como contador}
  var
    dig:rango;
  begin
    while(num<>0)do begin
       dig:=num MOD 10;
       d[dig]:=d[dig]+1;
       num:= num DIV 10;
     end;
  end;

 function digitoMaximo(vec:digitos):rango;{e) elementoMaximo: retorna la posición del mayor elemento del vector}
 var
    i,posMax:rango;
    max:integer;
 begin
    max:=-1;
    for i:= 0 to 9 do
       if (vec[i]>max) then begin
          max:=vec[i];
          posMax:=i;
        end;
    digitoMaximo:=posMax;
 end; 

 procedure informarOcurrencias(dig:digitos);
  var
     i:rango;
  begin
     for i:=0 to 9 do
       if (dig[i]>0)then
         writeln('La cantidad de ocurrencias de ',i,' es igual a ',dig[i]);
  end;
  
 procedure sinOcurrencias(dig:digitos);
  var
     i:rango;
  begin
    for i:=0to 9 do
      if (dig[i]=0)then
        writeln('El digito ',i,' no tuvo ocurrencias');
  end;

{programa principal}  
var
   dig:digitos;
   num:integer;
begin
   inicializar(dig);
   readln(num);
   while (num<>-1)do begin
       descomponer(dig,num);
       readln(num);
   end;
   informarOcurrencias(dig);
   sinOcurrencias(dig);
   writeln('El digito mas leido fue ',digitoMaximo(dig));
end.
