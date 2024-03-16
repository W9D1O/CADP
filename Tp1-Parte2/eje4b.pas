{
  b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
 }

program eje4b;

var
  num,min1,min2:integer;

begin
  min1:= maxint;
  min2:= maxint;
  writeln('Ingrese un numero: ');
  readln(num);
  while(num <> 0)do
    begin
      if(num < min1)then
        begin
          min2:= min1;
          min1:= num
        end
      else
        if(num < min2)then
          min2:= num;
      writeln('Ingrese un numero: ');
      readln(num)
    end;
  writeln('Los valores mas bajos ingresados fueron: ',min1,' y ',min2)
  end.
