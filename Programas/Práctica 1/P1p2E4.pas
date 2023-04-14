program P1p2E4;

var 
i, num, min1, min2: integer;

BEGIN
  readln(min1);
  readln(num);
  if (num<min1) then
    min1:= num
  else 
    min2:= num;
  for i:= 1 to 998 do begin  	
    readln(num);
    if (num<min1) then begin
      min2:= min1;
      min1:= num;
    end    
    else
      if (num>min1) and (num<min2) then 
      min2:= num;
  end;
  writeln('Los dos numeros minimos leidos son ',min1,' y ',min2,'');  
END.
