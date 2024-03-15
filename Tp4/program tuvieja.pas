
Program tuvieja;

Const 
  TOPE = 20;

Type 
  TipoVector = Array [1..TOPE] Of integer;

Var 
  I, MAYOR, POSI : INTEGER;
  VECTOR : TipoVector;

Begin
  Randomize;
   {Llenamos el vector}
  For i:=1 To tope Do
    VECTOR[I] := random(100)+1;
   {Ahora buscamos el mayor}
  MAYOR := VECTOR[1];
  POSI := 1;
  For i:=2 To TOPE Do
    If VECTOR[I]>MAYOR Then
      Begin
        MAYOR := VECTOR[I];
        POSI := I;
      End;
  Writeln('El mayor elemento del vector es: ',mayor,' en la posici¢n ',posi);
  readln;
End.
