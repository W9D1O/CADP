{
 6. Realice un programa que informe el valor total en pesos de una transacción en dólares. Para
ello, el programa debe leer el monto total en dólares de la transacción, el valor del dólar al día
de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. Por
ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor 189,32 pesos y el
banco cobra un 4% de comisión, entonces el programa deberá informar:
La transacción será de 1968,93 pesos argentinos
(resultado de multiplicar 10*189,32 y adicionarle el 4%)

 }

program eje6;


  
var
  monto,valordolar,comision:real;
  pesos:real;
begin
  writeln('Ingrese valor en dolares: ');
  readln(monto);
  writeln('Ingrese el valor del dolar: ');
  readln(valordolar);
  writeln('Ingrese comosion del banco: ');
  readln(comision);
  pesos:= monto * valordolar + ((monto * valordolar)*(comision / 100));
  {La asignacion en pesos es menos complicada de lo que parece.
  Se calcula el el porcentaje y se lo suma al resultado de multiplicar monto y valor dolar}


  writeln('La transaccion es de ',pesos,' pesos argentinos.')
  

  end.
