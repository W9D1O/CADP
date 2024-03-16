{
  1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
 }

program eje1;

var
  i,num,total:integer;

begin
  total:= 0;
  for i:= 1 to 10 do
    begin
      writeln('Ingrese un numero: ');
      readln(num);
      total:= total + num
    end;
  writeln(total)
  end.
