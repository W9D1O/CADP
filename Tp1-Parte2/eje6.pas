{
  6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.

 }

program eje6;

const
  fin = 200;

var
  codigo,i,codib1,codib2,cant:integer;
  precio,auxp1,auxp2:real;
  
begin
  cant:= 0;
  auxp1:= maxint;
  auxp2:= maxint;
  codib1:= -1;
  codib2:= -1;
  for i:= 1 to fin do
    begin
      writeln('Ingrese codigo del producto: ');
      readln(codigo);
      writeln('Ingrese el valor del producto: ');
      readln(precio);
      if(precio < auxp1)then
        begin
          auxp2:= auxp1;
          codib2:= codib1;
          auxp1:= precio;
          codib1:= codigo
        end
      else
        if(precio < auxp2)then
          begin
            auxp2:= precio;
            codib2:= codigo
          end;
      if((precio > 16) and (codigo mod 2 = 0))then
        cant:= cant + 1;
    end;
  writeln('Los codigos de los productos mas baratos son: ',codib1,' y ',codib2);
  writeln('Los productos con un valor superior a 16 pesos y cuyo codigo es par son: ',cant) 
  end.
