program P0E6;
var
    usd,valorDolar,comision,valorFinal:real;
begin
    Writeln('ingrese su monto total en $USD');
    readln(usd);
    Writeln('ingrese el valor del dolar');
    readln(valorDolar);
    Writeln('ingrese el porcentaje de comision');
    readln(comision);
    valorFinal:=(usd * valorDolar) + ((usd * valorDolar) * comision) / 100;
    Writeln('La transaccion sera ', valorFinal:8:2,' pesos argentinos');
    readln();
end.
