{
 6. Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
Por ejemplo, se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un
promedio).
Al finalizar la lectura, informar:
a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
1).
c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
 }

program eje6;

var
  legajo,cantalu;cantpro,destacados:integer;
  promedio,porcentaje:real;

begin
  cantalu:= 0;
  cantpro:= 0;
  destacados:= 0;
  writeln('Ingrese legajo del alumno: ');
  readln(legajo);
  writeln('Ingrese el promedio del alumno: ');
  readln(promedio);
  while(lejajo <> -1)do
    begin
      cantalu:= cantalu + 1;
      if (promedio > 6.5)then
        cantpro:= contpro + 1;
      if ((promedio > 8.5) and (legajo < 2500))then
        destacados:= destacados + 1;
      writeln('Inrese legajo del alumno: ');
      readln(legajo);
      if (legajo <> -1)then
        begin
          writeln('Ingrese promedio del alumno: ');
          readln(promedio)
        end;
    end;
    writeln('La cantidad de alumnos leidos fueron: ',cantalu);
    writeln('La cantidad de alumnos cuyo promedio supera la nota de 6.5 es: ',cantpro);
    porcentaje:= (destacados * 100) / cantalu;
    writeln('El porcentaje de alumnos destacados es de: ',porcentaje:2:2)

  end.
