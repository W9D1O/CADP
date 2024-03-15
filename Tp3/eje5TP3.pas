program DoblePar;
procedure Dobles(a,b:integer; var dobleA:integer );
begin
if (a* 2= b)then
begin
dobleA:= dobleA + 1;
writeln('este es el valor de dobleA: ', dobleA);
end;
end;
var
num1, num2:integer;
dobleN2,canP:integer;
begin
canP:= 0;
dobleN2:=0;
writeln('Ingrese un numero: ');
readln(num1);
writeln('Ingrese otro numero: ');
readln(num2);
while (num1 <> 0)  do
begin
while (num2 <> 0) do
begin
Dobles(num1,num2, dobleN2);
canp:= canp + 1;
writeln('Ingrese un numero: ');
readln(num1);
writeln('Ingrese otro numero: ');
readln(num2);
end;
end;
  WriteLn('La cantidad de pares ingresados fue de: ', canP);
  WriteLn('La cantidad de pares donde el segundo numero fue el doble del primero fue de: ', dobleN2);
end.
