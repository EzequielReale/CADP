program P0E4;
const
    PI=3.141592654;
var
    D,radio,area,perimetro:real;
begin
    writeln('ingrese el diametro del círculo');
    readln(D);
    radio:= D / 2;
    area:=PI * (radio * radio);
    perimetro:= D * PI;
    writeln('El radio es: ',radio:1:2,'');
    writeln('El area es: ',area:1:2,'');
    writeln('El perimetro es: ',perimetro:1:2,'');
    readln();
end.
