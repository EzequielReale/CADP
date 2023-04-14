program P2p2E5a;

	function Doble(numA:integer;numB:integer):boolean;
	begin
	  doble:= (numB = numA*2);
	end;

  var 
    numA, numB, si, no: integer; 

  BEGIN
    si:= 0; no:= 0;
	writeln('ingrese 2 numeros');
	readln(numA,numB);
	while not((numA = 0) and (numB = 0)) do
	begin
      if (doble(numA, numB)) then
        si:= si + 1
      else
        no:= no + 1;
      writeln('ingrese 2 numeros');
	  readln(numA,numB);
    end;
    writeln(no,' veces el 2do numero no fue el doble del 1ro. Mientras que ',si,' veces el 2do numero fue el doble del 1ro');
  END.


