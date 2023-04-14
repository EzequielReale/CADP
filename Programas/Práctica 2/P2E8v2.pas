program P2E8v2;

  var
  letra : char;
 
   function analizarLetra : integer;
   var aux:integer;
   begin
     if (letra >= 'a') and (letra <= 'z') then
       aux := 1
     else
       if (letra >= 'A') and (letra <= 'Z') then
         aux := 2
       else
	     aux := 3;
     analizarLetra := aux;  
   end; { fin de la funcion analizarLetra }

  procedure leer;
  begin
    writeln('Ingrese una letra');
    readln(letra);
    if (analizarLetra = 1) then
      writeln('Se trata de una minuscula')
    else
      if (analizarLetra = 2) then
      writeln('Se trata de una mauscula')
      else
	    writeln('Se trata de otro caracter');
  end; { fin del procedure leer}
 
begin { programa principal }
 leer;
 writeln('Gracias, vuelva prontosss');
end.

