{
  a. Modifique el programa anterior para que, además de informar el mayor número leído, se
informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la
misma secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98, en la posición 7”

 }

program eje2a;

var
  i,mayor,num,posicion:integer;

begin
  mayor:= -9999;
  for i:= 1 to 10 do
    begin
      writeln('Ingrese un numero: ');
      readln(num);
      if(num > mayor)then
        begin
          mayor:= num;
          posicion:= i
        end;
    end;
  writeln('El valor mas alto fue: ',mayor,' en la posicion ',posicion)
  end.
