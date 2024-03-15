(*6. La Agencia Espacial Europea (ESA) está realizando un relevamiento de todas las sondas espaciales lanzadas
al espacio en la última década. De cada sonda se conoce su nombre, duración estimada de la misión
(cantidad de meses que permanecerá activa), el costo de construcción, el costo de mantenimiento mensual y
rango del espectro electromagnético sobre el que realizará estudios. Dicho rango se divide en 7 categorías:
1. radio; 2. microondas; 3.infrarrojo; 4. luz visible; 5. ultravioleta; 6. rayos X; 7. rayos gamma
Realizar un programa que lea y almacene la información de todas las sondas espaciales. La lectura finaliza al
ingresar la sonda llamada “GAIA”, que debe procesarse.
Una vez finalizada la lectura, informar:
a. El nombre de la sonda más costosa (considerando su costo de construcción y de mantenimiento).
b. La cantidad de sondas que realizarán estudios en cada rango del espectro electromagnético.
c. La cantidad de sondas cuya duración estimada supera la duración promedio de todas las sondas.
d. El nombre de las sondas cuyo costo de construcción supera el costo promedio entre todas las sondas.
Nota: para resolver los incisos a), b), c) y d), la lista debe recorrerse la menor cantidad de veces posible*)
program Tp6Ej6;

type
rangoEs= 1..7;

Sonda= record
nombre:string;
MisionMes:integer;
CostoC:real;
CostoMen:real; // Costo por meses
Rango:rangoEs;
end;

rangoE= array [rangoEs]of integer;

Pun=^Lista;

Lista= record
Naves:Sonda;
sig:Pun;
end;

procedure IniVec(var Re:rangoE );
var
i:integer;
begin
for i:= 1 to 7 do
Re[i]:= 0;
end;
procedure Leer(var S:Sonda);
begin
writeln('Ingrese nombre');
readln(S.nombre);
writeln('Inrese canditad de meses de la mision');
readln(S.MisionMes);
writeln('Ingrese costo de construccion');
readln(S.CostoC);
writeln('Ingrese el costo mensual de mantencion');
readln(S.CostoMen);
writeln('Ingrese REE');
readln(S.Rango);
end;

procedure AA ( var Punpun:Pun; s:sonda);
var
Putito:Pun; // Esta variable de tipo puntero, no la inicializo
begin
new(Putito); // Cuando uso New en el puntero, pido memoria y recibo una direccion a esa memoria que pedi. Ahora Este puntero tiene como dato la direccion a esa memoria.
Putito^.Naves:= S; //Ahora la variable viene acompañada del simbolo caret (^), esto significa que el puntero (Putito^) está en la direccion de memoria que se le dio a "Putito" .
//Este puntero es del tipo "Pun", nombre que le asignamos en type, que "apunta" a Listas (^Listas), esto significa que las variables
//de este tipo de punteros van a pedir la memoria suficiente para todo lo que contenga ese registro Listas
// En este caso, Listas se compone de, una Lista y de un Puntero de tipo Pun
//¡Que significa que uno de los campos de Lista sea un puntero de tipo Pun?
// Que el elmento en este caso llamado siguiente va a ser capaz de guardar una direccion de memoria de lo apuntado por el puntero, es decir.
// Sig de tipo Pun, puede guardar una direccion de memoria, memoria que es lo suficientemente grande como para guardar otro registro similar al que pertenece

Putito^.sig:= Punpun;
Punpun:= Putito;
//En este modulo lo que sucede es lo siguiente: new(Puntito), esta variable pide memoria, y se le da una rireccion a la memoria que pidio
// Puntito^ accede a la dirreccion de memoria
end;
procedure Cargar(Punpun:pun; s:sonda);
begin
Leer(s);
while(s.nombre <> 'Gaia')do
AA(Punpun,s);
end;

var
P:Pun;
Son:Sonda;
begin
P:=Nil; // A esta variable si la inicalizo. La pregunta es ¿por qué? Al cedir que P vale Nil, estoy diciendo que No tiene ninguna direccion de memoria asignada. 
Leer(Son);

Cargar(P,Son);


end.
