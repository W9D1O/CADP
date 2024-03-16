{
 5. Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.

 }
program eje5;

var
  a,aux:real;
  cont:integer;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  aux:= a;
  cont:= 0;
  while((cont < 10) and (a <> aux * 2))do
    begin
      writeln('Ingrese un numero: ');
      readln(a);
      cont:= cont + 1;
    end;
  if (cont = 10)then
    writeln('No se ha ingresado el doble de X')
  end.
