program vectorP2;

Const 
  fin = 5;

Type 
  rango = 1..fin;
  Vnum = array [rango] Of integer;


{Para resolver el primer modulo tengo que usar un while para evaluar las condiciones
}

Procedure CargarV( Var CV:Vnum);
var
j:integer;
Begin
  For j:= 1 To fin Do
    //Recorre el vector
    Begin
      WriteLn('Ingrese valor');
      read(CV[j]);
      //Cargar el valor desde el teclado en cada posición
    End;
    
End;


procedure ElemMin (MinV:Vnum);
var
i,num5:integer;
begin
num5:=9999;
for i:= 1 to fin do
begin
if(num5 > MinV[i])then
num5:= MinV[i];
end;
if (num5 = MinV[i])then
writeln('El valor mas al bajo se encuentra en la posicion; ', i);

end;


Var 
  num: integer;
  V: Vnum;
Begin

num:= 23;
CargarV(V);

ElemMin(V);
end.
