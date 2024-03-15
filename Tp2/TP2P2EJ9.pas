{9. Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se
lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número de
inscripción 1200, que debe procesarse. Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Nombre de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par.}

program ej9;

procedure ape (var a:string; nom:string; num:integer);
var
apeChico1,apeChico2:string;

begin
  
end;
var
apellido, nombre:string;
numero:integer;
begin
repeat
WriteLn('Ingrese el apellido del alumno:');
ReadLn(apellido);
WriteLn('Ingre nombre del alumno: ');
ReadLn(nombre);
WriteLn('Ingrese numero de inscripcion del alumno: ');
ReadLn(numero);
  
until (numero=1200);
  
end.


