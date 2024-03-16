{
  7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”}

program eje7;

var
  codigo:integer;
  precioact,precionue:real;
  diez:real;
begin
  repeat {Repite el bucle hasta que la condicion del ultil sea verdadera. La codicion se comprueba al final del bucle y esta si es tomada por el programa}
    writeln('Ingrese codigo del producto: ');
    readln(codigo);
    writeln('Ingrese valor actual de producto: ');
    readln(precioact);
    writeln('Ingrese el nuevo valor del producto: ');
    readln(precionue);
    diez:= precioact + (precioact * 0.10); {Multiplicar preacioact por 0.10 nos da el 10% del valor de precioact, a eso le sumamos el propio valor de precioact}
    if(precionue >=diez)then {Si precio nuevo es mayor o igual a diez significa que el aumento es igual o mayor al diez porciento}
      writeln('El aumento de precio de producto ',codigo,' es mayor al 10%')
    else
      writeln('El aumento de precio del producto ',codigo,' es menor al 10%');
    until codigo = 32767;
  end.
