{
  3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota.
 }
program eje3;

var
  nom:string[21]; {El numero entre corchetes representa la cantidad de caracteres que puede guardar la cadena. Esta cadena puede guardar 20 caracteres, se le tenia que restar siempre 1 no me acuerdo bien porque.}
  nota:real;
  cant7,cant8:integer;

begin
  cant8:= 0;
  cant7:= 0;
  repeat
    writeln('Ingrese el nombre del alumno: ');
    readln(nom);
    writeln('Ingrese nota del alumno: ');
    readln(nota);
    if(nota >= 8)then
      cant8:= cant8 + 1;
    if(nota = 7)then
      cant7:= cant7 + 1;
    until ((nom = 'Zidane Zinedine') or (nom = 'zidane zinedine'));
  writeln('La cantidad de alumnos con una nota de 8 o mas fueron: ',cant8);
  writeln('La cantidad de alumnos con una nota igual a 7 fueron: ',cant7)
  end.
