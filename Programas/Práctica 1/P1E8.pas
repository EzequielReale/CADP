program P1E8;

var
c1,c2,c3: char;
b1,b2,b3: boolean;

BEGIN
      writeln('Escriba 3 caracteres');
      read(c1,c2,c3);
      writeln('Las letras son: ',c1,c2,c3,'.');
      b1:= (c1='a') or (c1='e') or (c1='i') or (c1='o') or (c1='u');
      b2:= (c2='a') or (c2='e') or (c2='i') or (c2='o') or (c2='u');
      b3:= (c3='a') or (c3='e') or (c3='i') or (c3='o') or (c3='u');
      
      if ( b1 and b2 and b3) then writeln('Todas son vocales');
      if (not (b1 and b2 and b3 )) then writeln('Al menos una no era vocal');
      
      exit;
      readln();
END.
