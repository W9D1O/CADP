
Program Vectores;

Const 
  fin = 5;

Type 
  rango = 1..fin;
  Vnum = array [rango] Of integer;





{Para resolver el primer modulo tengo que usar un while para evaluar las condiciones
}

Procedure CargarV( Var CV:Vnum);

Var 
  j: integer;
Begin
  For j:= 1 To fin Do
    //Recorre el vector
    Begin
      WriteLn('Ingrese valor');
      read(CV[j]);
      //Cargar el valor desde el teclado en cada posición
    End;

End;

Procedure PosV( num1:integer; Var num2V:integer; Var Pos1:integer;   BusN:Vnum);

Var 
  encontrado: boolean;
  i: rango;
Begin
  encontrado := false;
  For i:= 1 To fin Do
    If (BusN[i] = num2V)Then
      Begin
        Pos1 := i;
        encontrado := true;
      End;
  If (encontrado)Then
    Begin
      writeln('Se encontro el valor en la posicion', pos1);
    End
  Else
    Begin
      pos1 := -1;
      writeln('No se encontro el valor en la posicion ',pos1);
    End;
End;

Var 
  num, num2, Pos: integer;
  V: Vnum;
Begin

  num := 23;
  CargarV(V);
  PosV(num,num2,pos,V);

End.
