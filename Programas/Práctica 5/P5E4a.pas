program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
var
pc: puntero_cadena;
begin
pc^:= 'un nuevo texto';
new(pc);
writeln(pc^);
end. {error: se llenó la dirección del puntero antes de iniciarlo}
