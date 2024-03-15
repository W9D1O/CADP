{
 5. Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades
iguales entre todos los clientes. Los que le sobren se los quedará para él.
a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X), la
cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de
caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se
quedará para sí mismo.
b. Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo tiene un
valor de $1.60.
 }

program eje5;

const
  precio = 1.60;

var
  caramelos,clientes,kiosquero:integer;
  cantcli:integer;
  valorcli:real; {Numero decimal}


begin
  writeln('Ingrese cantidad de caramelos que hay a la venta: ');
  readln(caramelos);
  writeln('Ingrese cantidad de clientes entre los cuales se van a distribuir los caramelos: ');
  readln(clientes);
  cantcli:= caramelos / clientes; {El resúltado de la division es entera porque tanto el dividendo como el divisor son enteros. En caso contrario la division es en numero decimal}
  kiosquero := caramelos - cantcli;
  writeln('La cantidad de caramelos por clientes es: ',clientes,' la cantidad de caramelos que quedaron para el kiosquero son: ',kiosquero);
  valorcli:= cantcli * precio;
  writeln('El valor a cobrar a cada cliente es: ',valorcli)
  end.



