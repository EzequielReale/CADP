program ejercicio2; 

type 
 lista = ^nodo; // Declara el apunta nodos
 persona = record  // Registro de Persona
	dni: integer;  //  Dni como elemento
	nombre: string; //Nombre Elemento
	apellido: string;  // Apellido elemento
 end; 
 nodo = record 
	dato: persona;  // Dato del registro
	sig: lista;  // Puntero al proximo
 end; 
 
 procedure leerPersona(p: persona);  //********ERROR, NO LO TOMA COMO VALOR REFERENCIADO*******//
 begin 
	read(p.dni); 
	if (p.dni <> 0)then begin 
		read(p.nombre);
		read(p.apellido); 
	end; 
end;

 {Agrega un nodo a la lista} 
procedure agregarAdelante(l:lista;p:persona); // ***** ERROR NO TOMA VALOR REFERENCIADO****///
var 
aux: lista; 
begin 
	aux^.dato:= p; //**** AUX NO LE FUE ASIGNADO NINGUN ESPACIO EN MEMORIA
	aux^.sig:= l;  
	l:= aux; 
end;

{Carga la lista hasta que llega el dni 0} 
procedure generarLista(var l:lista); 
var 
p:nodo; 
begin 
	leerPersona(p); //****ERROR EL PARAMETRO NO ES DE TIPO PERSONA
	while (p.dni <> 0) do  // ****ERROR NO EXISTE EL VALOR P.DNI PORQUE SE INVOCO MAL EL PROCEDIMIENTO****//
	begin 
		agregarAdelante(l,p); // **ERROR EL PROCEDIMIENTO ESTA ERRONEO Y SE REPETERIA INIFINITAMENTE****//
	end; 
end; 

procedure imprimirInformacion(var l:lista); //****ERROR NO ES NECESARIO TOMARLO COMO REFERENCIADO***//
begin 
	while (l <> nil) do
	begin 
		writeln('DNI: ', l^.dato.dni, 'Nombre:', l^.nombre, 'Apellido:', l^.apellido); // ***ERROR EL NOMBRE Y EL APELLIDO SE ACCEDEN UTILIZANDO l^.dat.nombre y l^.dato.apellido
		l:= l^.sig;  //***ERROR SE VAN ELIMINANDO POR PUNTEROS PARA RECORRERLO****//
	end; 
 end;
 

{Programa principal} 
var 
l:lista; 
begin 
	generarLista(l);
	imprimirInformacion(l);
end.
