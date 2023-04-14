program P5E6;

Type 
Nombres = String[50];
Puntero = ^Nombres;
ArrPunteros = array[1..2500] of Puntero;

Var
Punteros: ArrPunteros;
i: integer;
BEGIN
for	i:= 1 to 2500 do begin
new(Punteros[i]);
readln(Punteros[i]^);
end;
END.

{
b.1) 4*2500 = 10000 bytes

b.2)    procedure crearNombre (arrP : ArrPunteros );
		var
			i : integer;
		begin
			for i:=1 to 2500
				new(arrP[i]);
		end;
		//Corresponde a memoria Dinamica

b.3)    procedure leerNombre(arrP : ArrPunteros);
	 	var
			i : integer;
		begin
			for i:=1 to 2500
				readln(arrP[i]^);
		end;
}
