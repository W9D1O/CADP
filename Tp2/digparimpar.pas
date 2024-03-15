Program ejercicio4;
procedure digParesImpares(num : integer; var par, impar : integer);
var
dig: integer;
begin
while (num <> 0) do begin
dig:= num mod 10;
writeln(dig);
if((dig mod 2)= 0) then
begin

par := par + 1;

end
else
impar:= impar +1;
num := num DIV 10;
end;
end;
var
dato, par, impar: integer;
begin
par := 0;
impar := 0;
{repeat}
writeln('Ingrese numero');
read(dato);
digParesImpares(dato,par,impar);
{until (dato = 100);}
writeln('Pares: ',par, 'Ímpares:', impar);
end.
