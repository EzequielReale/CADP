program P3E4;
type
  line=record
    numero:integer;
    minutos:integer;
    MB:integer;
  end;
  cliente=record
    codigo:integer;
    cantLineas:integer;
    lineas:line;
  end;
  
procedure leerLinea(var l:line);  {parte A del ejercicio}
 begin
  with l do
    begin
      writeln('Ingrese su numero ');read(numero);
      writeln('Ingrese minutos consumidos ');read(minutos);
      writeln('Ingrese MB consumidos ');read(MB);
    end;
 end;
     
procedure leerCliente(var c:cliente;var MBtotales,minTotales:integer); {inciso B}
 var
  i:integer;
 begin
   MBtotales:=0;
   minTotales:=0;
   with c do
     begin
       read(codigo); read(cantLineas);
       for i:=1 to cantLineas do
         begin
           leerLinea(lineas);
           MBtotales:=MBtotales + lineas.MB;
           minTotales:= minTotales + lineas.minutos;
         end;
      end;
 end;
 
function montoTotal(mb,min:integer):real;
 begin
   montoTotal:= ((1.35*mb)+ (min*3.40));
 end;
 
var
 i,MBtotales,minTotales:integer;
 cl:cliente;
begin
  for i:=1 to 3 do
    begin
      writeln('Ingrese su codigo y cantidad de lineas a su nombre');
      leerCliente(cl,MBtotales,minTotales);
      writeln('Monto total a facturar: $',montoTotal(MBtotales,minTotales):2:2);
    end;
end.
