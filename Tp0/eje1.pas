{
 1. Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
mensaje: Se ingresaron los valores 8 y 4
 }

{Todo lo encerrado entre llaves son comentarios, el compilador lo ignora }
program eje1; {Nomrbre del programa}

var {Declaracion de variables}
  a,b:integer; {Elegimos nombres para las variables y asignamos su tipo, en este caso valores enteros}

  begin {begin marca el inicio del programa}
  writeln('Ingrese un valor: '); {writeln imprime por pantalla el conteido entre parentesis y un salto de linea}
  readln(a); {readln lee desde teclado informacion, en este caso un entero}
  writeln('Ingrese el siguiente valor: ');
  readln(b);
  writeln(b,' ', a) {Los punto y coma marca el final de cada sentencia, en este caso no es necesario ya que el "end." esta marcando el final del programa}
end. {end seguido de un punto marga el final de programa}
