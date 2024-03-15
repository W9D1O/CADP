{ Realizar un programa modularizado que lea una ssecuencia de números enteros.
  La lectura finaliza cuando llega el número 123456, que no debe procesarse.
  Informaaar por pantalla para cada número la suma de sus digitos y la cantidad de digitos impares que posee.
  }
program tp2ej8;

procedure sumd (num:integer);
var
  sum:integer;

begin
  sum := 0;
  while (num <> 0) do
    begin

      sum := sum + (num mod 10);
      num := num div 10;
    end;
  writeln('La suma de los digitos del valor ingresado es: ',sum);
end;

procedure impar(num:integer);
var
  ip,cont : integer;
begin
  cont := 0;
while (num <> 0) do
  begin
    ip := num mod 10;
    if (ip mod 2 <> 0) then
      begin
        cont := cont + 1
      end;
      num := num div 10
    end;
    if (cont <> 0) then
      writeln('La cantidad de numeros impares es: ',cont)
    else
      writeln('El numero ingresado no contenia digitos impares');

end;

var
  n:integer;

begin
  writeln('Ingrese un numero: ');
  readln(n);
  while (n <> 1234) do
    begin
    sumd(n);
    impar(n); 
    writeln('Ingrese un numero: ');
    readln(n);
    end;
end.
    
 


