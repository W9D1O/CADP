{
 3. Implemente un programa que lea dos números reales e imprima el resultado de la división de
los mismos con una precisión de dos decimales. Por ejemplo, si se ingresan los valores 4,5 y 7,2,
debe imprimir: El resultado de dividir 4,5 por 7,2 es 0,62

 }

program eje3; {Nombre del programa}

var {zona de declaracion de variables}
a,b: real; {El tipo real corresponde a los numero con coma}

begin {Marcamos el comienzo del programa}
  writeln('Ingrese el primer valor: ');
  readln(a);
  writeln('Ingrese el segundo valor: ');
  readln(b);
  writeln('Primera version: ',a / b); {La barra se usa para lo operacion de division. En esta linea el resultado de la division se va a mostrar en notacion cientifica}
  writeln((a / b):2:2)
end. {Marcamos el final de programa}

