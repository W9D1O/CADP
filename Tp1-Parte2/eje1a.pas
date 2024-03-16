{
1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.}

program eje1;

var
  i,num,total,cant:integer;

begin
  total:= 0;
  cant:= 0;
  for i:= 1 to 10 do
    begin
      writeln('Ingrese un numero: ');
      readln(num);
      if(num > 5)then
        cant:= cant + 1;
      total:= total + num
    end;
  writeln('Fueron ',cant,' los valores mayores a 5.');
  writeln(total)
  end.
