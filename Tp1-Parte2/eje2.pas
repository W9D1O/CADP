{
  2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98”
 }

program eje2;

var
  i,mayor,num:integer;

begin
  mayor:= -9999;
  for i:= 1 to 10 do
    begin
      writeln('Ingrese un numero: ');
      readln(num);
      if(num > mayor)then
        mayor:= num;
    end;
  writeln('El valor mas alto ingresado fue: ',mayor)
  end.
