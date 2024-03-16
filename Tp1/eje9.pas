{
  9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )
 }

program eje9;

var
  signo:char;
  num,resul:integer;
begin
  resul := 0;
  writeln('Ingrese signo que representa la operacion a realizar: ');
  readln(signo);
  if((signo <> '+') and (signo <> '-'))then
    begin
      writeln('Error: Signo diferente de + o - .');
      writeln('El programa se puso triste y se cerro');
      exit()
    end;
  writeln('Ingrese un numero: ');
  readln(num);
  while(num <> 0)do
    begin
      if(signo = '-')then
        begin
          if(resul = 0)then
            resul:= num - resul
          else
            resul:= resul - num;
          end
        else
        resul:= resul + num;
    writeln('Ingrese un numero: ');
    readln(num)
    end;
  writeln(resul)

  end.
