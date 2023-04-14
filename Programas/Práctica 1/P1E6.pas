program P1E6;
var
        legajo, alumnos, destacados, al_prom_mayor: integer;
        promedio, porcentaje: real;
BEGIN  
        alumnos:= 0;
        al_prom_mayor:= 0;
        destacados:= 0;

        write('Ingrese numero de legajo y luego el promedio (Termina con legajo = -1): ');
        read(legajo);
        while (legajo <> -1) do begin
                readln(promedio);

                alumnos:= alumnos + 1;  {cantidad de alumnos leida}
                if (promedio > 6.5) then al_prom_mayor:= al_prom_mayor + 1; {alumnos con promedio mayor a 6.5}
                if ((promedio > 8.5) and (legajo < 2500)) then destacados:= destacados + 1;  {destacados con legajo menor a 2500}

                write('Ingrese legajo y promedio:');
                read(legajo);
        end;

        if (alumnos <> 0) then porcentaje:= (destacados / alumnos) * 100;
        writeln('La cantidad de alumnos leida es de: ',alumnos);
        writeln('La cantidad de alumnos con un promedio mayor a 6.5 es de: ',al_prom_mayor);
        writeln('El porcentaje de alumnos destacados con legajo menor a 2500 es: ', porcentaje:1:2,'%');
END.