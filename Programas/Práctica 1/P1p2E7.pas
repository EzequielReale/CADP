program p1p2_ej7;
const 
cant_pilotos = 6;//100
var
	nPiloto:string;
	tiempo:real;
	tmin1,tmin2,tmax1,tmax2:real;
	pilotoMin1,pilotoMin2,pilotoMax1,pilotoMax2:string;
	i:integer;
begin
	tmin1:=100;tmax1:=-1;
	tmin2:=100;tmax2:=-1;
	pilotoMin1 := 'Sin ganador';
	pilotoMax1 := 'Sin ganador';
	{1}
	for i:=1 to cant_pilotos do begin
		writeln('Ingrese nombre del piloto:');
		readln(nPiloto);
		writeln('Ingrese tiempo logrado');
		readln(tiempo);
		
		if(tiempo< tmin1)then begin
			tmin2:=tmin1;
			pilotoMin2:=pilotoMin1;
			tmin1:=tiempo;
			pilotoMin1:=nPiloto;
		end
		else
			if(tiempo<tmin2)then begin
				tmin2:=tiempo;
				pilotomin2:=nPiloto;
			end;
		{2}
		if(tiempo >tmax1)then begin
			tmax2:=tmax1;
			pilotoMax2:=pilotoMax1;
			
			tmax1:=tiempo;
			pilotoMax1:=nPiloto;
		end
		else
			if(tiempo>tmax2)then begin
				tmax2:=tiempo;
				pilotoMax2:=nPiloto;
			end;
	end;{fin del for}
	
	writeln('primer puesto: ', pilotoMin1);
	writeln('segundo puesto: ', pilotoMin2);
	writeln('penultimo: ', pilotoMax2);
	writeln('ultimo: ', pilotoMax1);
	
	readln();
end.
