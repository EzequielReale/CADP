a. Máximo: recibe la lista como parámetro y retorna el elemento de valor máximo.

    function maximo(L:lista):integer;
    var
    max: integer;
    begin
    	max := 0;
    	while(L <> nil)do
    	begin
    		if(L^.num >= max)then
    			max := L^.num;
    		L := L^.sig;
    	end;
    	maximo := max;
    end;
    

b. Mínimo: recibe la lista como parámetro y retorna el elemento de valor mínimo.

    function minimo(L:lista):integer;
    var
    min: integer;
    begin
    	min:= 9999;
    	while(L <> nil)do
    	begin
    		if(L^.num < min)then
    			min := L^.num;
    		L := L^.sig;
    	end;
    	minimo := min;
    end;


c. Múltiplos: recibe como parámetros la lista L y un valor entero A, y retorna la cantidad de elementos de la lista que son múltiplos de A.

    function multiplos(L:lista;M : integer):integer;
    var
    counter : integer;
    begin
    	counter:=0;
    	while(L <> nil)do
    	begin
    		if(L^.num mod M = 0)then
    			counter+=1;
    		L := L^.sig;
    	end;
    	multiplos := counter;
    end;
