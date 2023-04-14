program ejer5;

type
tproduc=record
	codigo:integer;
	descripcion:string;
	stock:integer;
	stockM:integer;
	precio:real;
end;

listaP= ^nodo;

nodo=record
	dato:tproduc;
	sig:listaP;
end;

procedure leer (var t:tproduc); //leo producto
begin
	with t do begin
		write ('Ingrese codigo del producto: '); readln (codigo);
		if (codigo <> -1) then begin
			write ('Ingrese descripcion del producto: '); readln (descripcion);
			write ('Ingrese stock actual del producto: '); readln (stock);
			write ('Ingrese stock minimo del producto: '); readln (stockM);
			write ('Ingrese precio del producto: '); readln (precio);
			writeln ();
		end;
	end;
end;


procedure ordenarLista (var pri,ult:listaP; p:tproduc); //agrego en la lista
var
	nuevo:listaP;
begin
	new (nuevo); nuevo^.dato:= p; nuevo^.sig:= nil;
	if (pri = nil) then
		pri:=nuevo
	else 
		ult^.sig:= nuevo;
	ult:=nuevo;
end;

procedure cargarLista (var pri,ult:listaP);
var
t:tproduc;
begin
	leer (t);
	while (t.codigo <> - 1) do begin
		ordenarLista (pri,ult,t);
		leer (t);
	end;
end;

//a

procedure porDebajo (stock,stockM:integer; var cantPs:integer);
begin
if (stock < stockM) then 
	cantPs:= cantPs + 1;
end;

//b
function cantPares (codigo:integer): integer;
var
cantP,dig:integer;
begin
	cantP:=0;
	while (codigo <> 0) do begin
		dig:= codigo mod 10;
		if (dig mod 2 =0) then cantP:= cantP + 1;
		codigo:= codigo div 10;
	end;
	cantPares:= cantP
end;

function cumple (cantPares:integer):boolean;
begin
	cumple:= cantPares >= 3;
end;

//c

procedure min (codigo:integer;precio:real; var minC1,minC2:integer; var minR1,minR2:real);
begin
	if (precio < minR1) then begin
		minR2:= minR1;
		minC2:= minC1;
		minR1:= precio;
		minC1:= codigo;
	end
	else
		if (precio < minR2) then begin
			minR2:= precio;
			minC2:= codigo;
		end;
end;

procedure recorrerLista (L:listaP; var cantPs,cantTotalElementos:integer; var minC1,minC2:integer; var minR1,minR2:real); //recorro lista
begin
	while (L <> nil) do begin
		porDebajo (L^.dato.stock, L^.dato.stockM,cantPs); //a
		cantTotalElementos:= cantTotalElementos + 1; //a
		if (cumple (cantPares (L^.dato.codigo))) then //b
			writeln ('La descripcion del producto ',L^.dato.codigo, ' que tiene al menos 3 digitos pares es ',L^.dato.descripcion); //INFORMO B
		min (L^.dato.codigo,L^.dato.precio,minC1,minC2,minR1,minR2); //c
		L:=L^.sig; 
	end;
end;


var
L,ult:listaP;
cantPs,cantTotalElementos,minC1,minC2:integer;
minR1,minR2:real;

begin
cantPs:=0;
cantTotalElementos:=0;
minC1:=0;
minC2:=0;
minR1:=32000;
minR2:= 32000;
L:= nil; //creo lista
cargarLista (L,ult); //cargo lista
recorrerLista (L,cantPs,cantTotalElementos,minC1,minC2,minR1,minR2); //recorro lista
writeln ();
writeln ('Porcentaje de productos con stock actual por debajo de su stock minimo: %' ,(cantPs/cantTotalElementos)*100:2:1); //a
writeln ('Codigo de los dos productos mas economicos: ',minC1, ' y ', minC2, '.'); //c
end.
