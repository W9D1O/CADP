{
  5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.
 }

program eje5;

var
  min,max,total,num:integer;

begin
  min:= maxint;
  max:= -30000;
  total:= 0;
  repeat
    writeln('Ingrese un numero: ');
    readln(num);
    total:= total + num;
    if(num < min)then
      min:= num;
    if(num > max)then
      max:= num;
    until num = 100;
  writeln('El valor mas alto ingresado fue: ',max);
  writeln('El valor mas bajo ingresadi fue: ',min);
  writeln('La suma de todos los valores ingresados es: ',total)
  end.
