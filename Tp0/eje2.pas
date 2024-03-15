{
 2. Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:
a. Utilizando una variable adicional
b. Sin utilizar una variable adicional
 }

program eje2; {Nombre del programa}

var {zona de declaracion de variables}
  a,b:integer; {damos nombre a las variables y le asignamos su tipo}

  begin {Marcamos el comienzo del programa principal}
  writeln('Ingrese el primer valor: ');
  readln(a);
  writeln('Ingrese el siguiente valor: ');
  readln(b);
  writeln(a + b) {Calcula la suma de las variables a y b para imprimilas por pantalla}
  end.
