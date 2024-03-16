{
 1. Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”.

 }

program eje1;

var
  a,b:integer;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  writeln('Ingrese el siguienrte numero: ');
  readln(b);
  if (a > b) then {Pregunta si a es mayor a b para ejecutar una instruccion}
  writeln(a) {si a es mayor lo imprime por pantalla}
  else {si a no es mayor a b entra al else que vendria a ser como un "si no"}
  begin {abrimos un begin porque vamos a tener varias instrucciones que van a formar parte del else. Si no se hace esto el else va a tomar como instruccion la primer linea despues del else hasta el punto y coma como acciones a realizar}
  if (b > a)then {pregunta si b es mayor a a}
    writeln(b) {en caso de serlo imprime el valor de a}
  else {si no lo es}
    writeln('Los valores ingresados son iguales.') {imprime la siguiente linea}
  end; {en estos casos el end se cierra co punto y coma}

  end.
