{
 4. Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).

 }
program eje4;

var
  a,aux:real;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  aux:= a; {Asignamos el valor que ingresamos en la varable a, a la variable aux}
  while(a <> aux * 2)do {Mientras la condicion del bucle while sea verdadera se repite las instrucciones que tiene dentro}
  begin
  writeln('Ingrese un numero: ');
  readln(a)
end;
  
  end.
