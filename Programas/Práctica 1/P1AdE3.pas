program P1AdE3;

const
pi= 3.14;

var
tanque: char;
tanquesbajos, tanques800, tanquesr, tanquesc: integer;
A,B,C,r,volumen,voltr, voltc,volpromc,volpromr,volmax, volmax1: real;

BEGIN
    volmax:= -1; volmax1:= -1; tanquesr:= 0; tanquesc:= 0; tanquesbajos:= 0; tanques800:= 0; voltr:= 0; voltc:= 0;
	
	writeln('Ingrese el tipo de tanque, R o C');
	readln(tanque);
	
	while (tanque <> 'Z') and (tanque <> 'z') do begin
	
	  if (tanque = 'R') or (tanque = 'r') then begin
	    tanquesr:= tanquesr + 1;
	    writeln('Ingrese el ancho');
	    readln(A);
	    writeln('Ingrese el largo');
	    readln(B);
	    writeln('Ingrese el alto');
	    readln(C);
	    volumen:= (A*B*C);
	    voltr:= voltr + volumen;
	    if (volumen > volmax) then begin
	    volmax1:= volmax;
	    volmax:= volumen;
	    end
	    else
	      if (volumen < volmax) and (volumen > volmax1) then
	        volmax1:= volumen;
	    if (C < 1.4) then
	      tanquesbajos:= tanquesbajos + 1;
	    if (volumen < 800) then
	      tanques800:= tanques800 + 1;
	  end
	  
	  else
	    if (tanque = 'C') or (tanque = 'c') then begin
	      tanquesc:= tanquesc + 1;
  	      writeln('Ingrese el radio');
	      readln(r);
	      writeln('Ingrese el alto');
	      readln(C);
	      volumen:= (pi*(r*r)*C);
	      voltc:= voltc + volumen;
	      if (volumen > volmax) then begin
	    volmax1:= volmax;
	    volmax:= volumen;
	    end
	    else
	      if (volumen < volmax) and (volumen > volmax1) then
	        volmax1:= volumen;
	    if (C < 1.4) then
	      tanquesbajos:= tanquesbajos + 1;
	    if (volumen < 800) then
	      tanques800:= tanques800 + 1;  
	    end;
	    
	    writeln('Ingrese el tipo de tanque, R o C');
	    readln(tanque);
	end;
	volpromr:= (voltr / tanquesr);
	volpromc:= (voltc / tanquesc);
	
	writeln('Los 2 tanques de mayor volumen poseen ',volmax:1:2,' y ',volmax1:1:2,' metros cubicos de capacidad');
	writeln('El volumen promedio de los tanques cilindricos es de ',volpromc:1:2);
	writeln('El volumen promedio de los tanques rectangulares es de ',volpromr:1:2);
	writeln('Se vendieron ',tanquesbajos,' tanques de alto menor a 1,40m');
	writeln('Se vendieron ',tanques800,' tanques con volumen menor a 800 metros cubicos');
END.

