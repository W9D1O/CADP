{5. Realizar un programa que lea y almacene la información de productos de un supermercado. De cada
producto se lee: código, descripción, stock actual, stock mínimo y precio. La lectura finaliza cuando se ingresa
el código -1, que no debe procesarse. Una vez leída y almacenada toda la información, calcular e informar:
a. Porcentaje de productos con stock actual por debajo de su stock mínimo.
b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares.
c. Código de los dos productos más económicos.}

program super;
type

producto = record
codigo{, stockA, stockM}: integer;
//desc : string;
precio : real
end;

lista = ^nodo;

nodo = record
p : producto;
sig : lista;
end;
procedure agAdelante (var l:lista; p:producto);
var
aux:lista;
begin
new(aux);
aux^.p:= p;
aux^.sig := l;
l := aux;

end;
procedure leerproducto(p:producto);
begin
writeln('Ingrese codigo de producto: ');
readln(p.codigo);

writeln('Ingrese valor: ');
readln(p.precio)

end;

procedure cargar(var l:lista; p:producto);
//var
//p: producto;
begin
leerproducto(p);
while (p.codigo <> -1)do
begin
agAdelante(l,p);
//leerproducto(p)
end;
end;

var
l :lista;
p:producto;
begin
l := nil;

cargar(l,p);


end.
