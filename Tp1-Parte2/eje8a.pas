{
  8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor
cantidad de ventas.
 }

program eje8;

const
  laboral = 31;
  

var
  i,auxv,cantdia,venmax:integer;
  monto,total:real;

begin
  auxv:= -1; 
  total:= 0;
  for i:= 1 to laboral do
    begin
      cantdia:= 0;
      writeln('Ingrese el valor de la venta: ');
      readln(monto);
      while(monto <> 0)do
        begin
          total:= total + monto;
          cantdia:= cantdia + 1;
          writeln('Ingrese el valor de la venta: ');
          readln(monto)
        end;
      if(cantdia > auxv)then
        begin
          auxv:= cantdia;
          venmax:= i
        end;
      writeln('La cantidad de ventas realizadas el dia de hoy fueron: ',cantdia)
    end;
  writeln('El dia con mas ventas realizadas fue: ',venmax);
  writeln('El monto total recaudado este mes es de: ',total)
  end.
