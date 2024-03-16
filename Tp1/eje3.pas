{
 3. Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10
 }

program eje3;

var
  a,b,c:integer;

begin
  writeln('Ingrese el primer valor: ');
  readln(a);
  writeln('Ingrese segundo valor: ');
  readln(b);
  writeln('Ingrese el ultimo valor: ');
  readln(c);
  if ((a > b) and (b > c))then
    begin
      writeln(a);
      writeln(b);
      writeln(c)
    end;
  if ((a > c) and (c > b))then
    begin
      writeln(a);
      writeln(c);
      writeln(b)
    end;
  if ((b > a) and (a > c))then
    begin
      writeln(b);
      writeln(a);
      writeln(c)
    end;
  if ((b > c) and (c > a))then
    begin
      writeln(b);
      writeln(c);
      writeln(a)
    end;
  if ((c > a) and (a > b))then
    begin
      writeln(c);
      writeln(a);
      writeln(b)
    end;
  if ((c > b) and (b > a))then
    begin
    writeln(c);
    writeln(b);
    writeln(a)
  end;

end.
