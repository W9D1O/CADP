{
 4. Implemente un programa que lea el diámetro D de un círculo e imprima:
a. El radio (R) del círculo (la mitad del diámetro).
b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R
2
c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
D*PI (o también PI*R*2).
 }

program eje4;

const {zona de declaracion de constantes. No se pueden cambiar durante la ejecucion del programa.}
  PI = 3.14 {Para la asignacion de constantes se usa el signo =}
  {Los valores decimales se escriben con puntos en vez de comas}

var
  diametro,radio,area,perimetro:real;

begin
  writeln('Ingrese el diametro del circulo: ');
  readln(diametro);
  radio := diametro / 2; {Los signos ":=" significan que se esta haciendo una asignacion. Se divide diametro por 2 y se le da el valor resultante a la variable radio}
  area:= radio * (PI* PI); {El signo de asterisco se usa para la multiplicacion. Se multiplica PI por si mismo, para lograr la potencia y despues se multiplica por r radio y se asigna el resultado a area}
  perimetro:= diametro * PI

  end.

