program P1E3;

var
        num1,num2,num3,mem: integer;

begin
        writeln('Escriba 3 numeros enteros'); 
        read(num1,num2,num3);
        while (num2>num1) or (num3>num2) do begin
                if (num1<num2)  then begin
                                        mem:= num1;
                                        num1:= num2;
                                        num2:= mem;
                end;

                if (num2<num3) then begin
                                        mem := num2;
                                        num2 := num3;
                                        num3:= mem;
                end;
        end;
        writeln(num1,num2,num3);
        readln();

end.
