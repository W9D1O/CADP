//Se dispone de un vector de 100 números enteros.

{ .a)Posición: Dado un número x y el vector de números se retorna 
 la posición del número x en dicho vector, o el valor -1 en caso de no encontrarce.}
{ .b) Intercambio, recibe dos valores x e y(Entre el 1 y 100 ) y el vector de numeros
 y retorna el mismo vector conde se intercambiaros los valores x e y.}
// Sumar vector: Retorna todos la suma de todos los elementos del vector
//Promedio: Devuelve el promedio de los elementos del vector.
//ElementoMaximo: Retorna la posición del mayor elemento del vector.
//ElementoMinimo: Retorna la posici+on del menor elemento del vector.

Program Vectores;

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

Procedure PosV( num1:integer; var num2V:integer; Var Pos1:integer;   BusN:Vnum);
var
encontrado:boolean;
i:rango;
Begin
encontrado:= false;
for i:= 1 to fin do
if (BusN[i] = num1)then
begin

Pos1:= i;
encontrado:=true;
end;
if(encontrado)then
begin
writeln('Se encontro el valor en la posicion ', pos1)
end;

if (encontrado = false)then
begin
pos1:= -1;
writeln('Codigo Error ',pos1, ' No se encontro el valor solicitado');
end;
end;

procedure Intercambio(var Int:Vnum);
var
n, n1,n2,n3:integer;
i,k,j:rango;
begin


writeln('Ingrese valor a encontrar');
readln(n);
writeln('Ingresar otro valor a encontrar');
readln(n1);
for i:= 1 to fin do
begin

if(Int[i] = n)then
begin
writeln('Este es el valor de n: ',n);
n3:=n;
k:= i;

end;
if(Int[i] = n1) then
begin
writeln('Este es el valor de n1: ',n1);
n2:=n1;
j:= i;
Int[i]:=n3;
writeln('Este es el valor de n2, ',n2, ' Este es el valor de n3 ',n3);
end;
end;
if(Int[i]= n)then
begin
Int[i]:= n2;
end;

for i:= 1 to fin do
begin

if ( j = i)then
Int[i]:=n3;
if(k= i)then
Int[i]:=n2;
writeln(Int[i]);
end;

end;

procedure ElemMax (MaxV:Vnum);
var
i,num4:integer;
begin
num4:=-1;
for i:= 1 to fin do
begin
if(num4 < MaxV[i])then
num4:= MaxV[i];
end;
if (num4 = MaxV[i])then
writeln('El valor mas al alto se encuentra en la posicion; ', i);
end;


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
  num, num2, Pos: integer;
  V: Vnum;
Begin

num:= 23;
CargarV(V);
PosV(num,num2,pos,V);
Intercambio(V);
ElemMax(V);
{ElemMin(V);}
End.
