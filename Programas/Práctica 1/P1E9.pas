program P1E9;

var
signo: char;
resultado, n1, n2, n3, n4, n5: integer;

BEGIN
	writeln('Escriba un signo + o -');
	readln(signo);
	if (signo <> '+') and (signo <> '-') then
	begin
	    writeln('Ni una instruccion podes seguir pajero. Error 404 not found');
	    exit;
	end;
	Writeln('Escriba una secuencia de 5 numeros terminada en 0');
	read(n1,n2,n3,n4,n5);
	writeln('Gracias amo');
	writeln('Tus numeros son ',n1,n2,n3,n4,n5,'');
	If (signo = '+') then
	begin
	    resultado:= n1 + n2 + n3 + n4 + n5;
	    writeln(resultado, '= (',n1,' + ',n2,' + ',n3,' + ',n4,')');
	end
	else
	begin
	    resultado:= n1 - n2 - n3 - n4 - n5;
	    writeln(resultado, '= (',n1,' - ',n2,' - ',n3,' - ',n4,')');
	end; 
	readln()  
END.

