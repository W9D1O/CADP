
Program DoblePar;
Procedure Dobles(a,b:integer; Var dobleA:integer );
Begin
  If (a* 2= b)Then
    Begin
      writeln('el segundo numero es el doble del primero ');
      dobleA := dobleA + 1;
    End;
End;

Var 
  num1, num2: integer;
  dobleN2,canP: integer;
Begin
  canP := 0;
  dobleN2 := 0;
  writeln('Ingrese un numero: ');
  readln(num1);

  While (num1 <> 0) Do

    Begin
      writeln('Ingrese otro numero: ');
      readln(num2);
      While (num2 <> 0) Do
        Begin



          Dobles(num1,num2, dobleN2);
          canp := canp + 1;
          writeln('Ingrese un numero: ');
          readln(num1);
          writeln('Ingrese otro numero: ');
          readln(num2);


        End;
    End;
  WriteLn('La cantidad de pares ingresados fue de: ', canP);
  WriteLn(




'La cantidad de pares donde el segundo numero fue el doble del primero fue de: '
          , dobleN2);
End.
