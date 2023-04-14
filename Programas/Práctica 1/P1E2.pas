program P1E2;

var
  num:real;

begin
  writeln('Por favor escriba un numero real');
  read(num);
  if (num>=0) then 
    writeln('El valor absoluto es:|',num:1:2,'|')
  else
    writeln('El valor absoluto es: |',num*-1:1:2,'|');
  readln();
end.
