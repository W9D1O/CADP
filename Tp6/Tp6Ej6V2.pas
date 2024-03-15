program Tp6Ej6;
const
Esp = 7;
type
RangoE= 1..Esp;
Espectro= array [RangoE] of string;

Sonda=record
nombre:string;
tiempo:integer;
costoC:real;
costoM:real; // CostoM es el costo de mantenimiento mensual.
Rango:RangoE;
end;

Esl=^NavesEsp;

NavesEsp=record
NavesE:Sonda;
sig:Esl;
end;
procedure Datos(var Son:Sonda);
begin
writeln('Ingrese Nombre de la Sonda');
readln(Son.nombre);
writeln('Ingrese tiemdo de la mision: ');
readln(Son.tiempo);
writeln('Ingrese costo de construccion: ');
readln(Son.costoC);
writeln('Ingrese costo de mantenimento: ');
readln(Son.costoM);
writeln('Ingrese Espectro electromagnetico');
readln(Son.Rango);
end;
procedure Adelante(Var L:Esl; S:Sonda);
var
Pun:Esl;
begin
new(Pun); //La variable Pun acaba de pedir memoria para todo a lo que apunta Esl, que es el registro Sonda y la variable sig de tipo els(que no tiene nunguna direccion asignada)
Pun^.NavesE:= S;
Pun^.sig:= L; // Acá le estoy dando una direccion a sig, en este caso es Nil, que significa que es el última en la lista.
L:= Pun; // Ahora L tiene la dirección de Pun, por lo que L es capaz de ingresar al pedazo de memoria que solicito pun.
end;
procedure DatoC (var Esla:Esl; So:Sonda);

begin
Datos(So);
while(So.nombre <> 'GAIA')do
Adelante(Esla, So);
Datos(So)
end;

procedure SCara();
begin
end;
var
L:Esl;
So:Sonda;
begin
L:= Nil;
Datos(So);
DatoC(L,So);
end.

