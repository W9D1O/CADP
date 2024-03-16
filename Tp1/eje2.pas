{
 2. Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero

 }
program eje2;

var
  a:real;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  if(a < 0)then {Si a es menos a 0}
    begin
      a:= a *(-1); {multiplicamos a por -1 para cambiarle el signo}
      writeln(a:2:2)
    end
  else {si a es igual o mayor a 0 simplemente imprimimos el numero}
    writeln(a:2:2)
  end.
