(*. Realizar un programa que lea y almacene la información de productos de un supermercado. De cada
producto se lee: código, descripción, stock actual, stock mínimo y precio. La lectura finaliza cuando se ingresa
el código -1, que no debe procesarse. Una vez leída y almacenada toda la información, calcular e informar:
a. Porcentaje de productos con stock actual por debajo de su stock mínimo.
b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares.
c. Código de los dos productos más económicos.*)


program SuperMecado;


type

 Lista= ^eslabon; // Lista es igual a lo apuntado por eslabón.
Productos= record
codigo:integer;
descripcion:string;
stockA:integer;
stockMin:integer;
precio:integer;
end;



eslabon= record // A su vez, eslabón es un registro.
Merca:Productos;
sig:Lista; // Dentro del registro esta el elemento "sig" que es de tipo Lista.
end;

procedure Leer(var enlace:Lista; elaza2:Productos);
var
nuevo: Lista;

begin
new(nuevo);
nuevo^.Merca:= elaza2;
nuevo^.sig:=enlace;
enlace:= nuevo;
writeln('Ingrese codigo del producto: ');
readln(nuevo^.Merca.codigo);
while(nuevo^.Merca.codigo <> 0)do
begin

writeln('Ingrese descripcion del producto: ');
readln(nuevo^.Merca.descripcion);
writeln('Ingrese stock actual: ');
readln(nuevo^.Merca.stockA);
writeln('Ingrese stock minimo: ');
readln(nuevo^.Merca.stockMin);
writeln('Ingrese valor: ');
readln(nuevo^.Merca.precio);

writeln(nuevo^.Merca.precio);
writeln('Ingrese Codigo del producto: ');
readln(nuevo^.Merca.codigo);

end;
end;
procedure Porcentaje();


begin

end;

procedure DigPar;
begin
 
end;

procedure PreciosCuidados ();
begin

end;

var
Nexo: Lista;
articulos:Productos;



begin
Nexo:= Nil;
new(nexo);
Leer(Nexo,articulos);
//writeln(Nexo^.precio);
end.
