program eje12;
function esVocal(car : char):boolean;
begin
  esVocal:= (car = 'a') or (car = 'e') or (car = 'i') or (car = 'o ') or (car = 'u'); //Faltan Mayus
end;

procedure a (var cumple : boolean);
var car:char;
begin
     readln(car);
     while( car <> '$') and (cumple) do
     begin
          if(not esVocal(car))then
                 cumple := false
          else
              readln(car);
     end;
end;

procedure b (var cumple : boolean);
var car:char;
begin
     readln(car);
     while( car <> '#') and (cumple) do
     begin
          if(car > 'z')or(car < 'a')or(esVocal(car))then
                 cumple := false
          else
              readln(car);
     end;
end;

var cumple : boolean;

Begin
cumple:= true;
a(cumple);
if(cumple) then  begin
        b(cumple);
        if(cumple) then
             writeln('se cumple el patron')
        else
            writeln('No se cumple en B');
end
else
    writeln('No  se cumple en A');
	
end.

