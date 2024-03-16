{
  4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
 }

program eje4;

const
  fin = 1000;

var
  i,min1,min2,num:integer;

begin
  min1:= maxint;
  min2:= maxint;
  for i:= 1 to fin do
    begin
      num:= random(maxint); {random va a generar numeros desde 0 a el valor maximo(-1) de un entero en pascal, el valor maximo es 32767}
      randomize;
      if(num < min1)then
        begin
          min2:= min1;
          min1:= num
          end
      else
        if(num < min2)then
          min2:= num;
    end;
  writeln('Los valores mas bajos ingresados fueron: ',min1,' y ',min2)
  end.
