program programadores;
 procedure leerDatos(var legajo: integer; var salario : real);
 begin
 
 writeln('Ingrese el nro de legajo y el salario');
 read(legajo);
 read(salario);
 end;
 procedure actualizarMaximo(var maxLegajo:integer; var maxSalario:real; Legajo:integer; Salario:real );

 begin
 
 if (Legajo > maxLegajo) then begin
 maxLegajo:= Legajo;
 maxSalario := Salario
 end;
 end;
 var
 legajo, maxLegajo, i : integer;
 sumarSalarios,salario, maxSalario : real;
 begin
 maxSalario:=0;
 salario:= 0;
 sumarSalarios := 0;
 for i := 1 to 5 do begin
 leerDatos(legajo, salario);
 actualizarMaximo(maxLegajo, maxSalario,legajo, salario );
 sumarSalarios := sumarSalarios + salario;
 end;
 writeln('En todo el mes se gastan ', sumarSalarios:0:2, ' pesos');
 writeln('El salario del empleado más nuevo es ',maxSalario:0:2);
 end.
