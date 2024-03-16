{8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
}

program eje8;

var
  a,b,c:char; {El tipo char admite solo caracteres}

begin
  writeln('Ingrese el primer caracter: ');
  readln(a);
  writeln('Ingrese el segundo caracter: ');
  readln(b);
  writeln('Ingrese el ultimo caracter: ');
  readln(c);
  if (((a = 'a') or (a = 'i') or (a = 'e') or (a = 'o') or (a = 'u')) and ((b = 'a') or (b = 'e') or (b = 'i') or (b = 'o') or (b = 'u')) and ((c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u')))then
    writeln('Los tres caracteres son vocales.')
  else
    writeln('Al menos un caracter no era vocal')
end.
