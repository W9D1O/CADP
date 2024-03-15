
Program punteros;

Type 
  cadena = string[9];
  producto = Record
    codigo: integer;
    descripcion: cadena;
    precio: real;
  End;
  puntero_producto = ^producto;

Var 
  p: puntero_producto;
  prod: producto;
Begin
  writeln(sizeof(p), ' bytes');
  // 4 bytes
  writeln(sizeof(prod), ' bytes');
  new(p);
  writeln(sizeof(p), ' bytes');
  p^.codigo := 1;
  p^.descripcion := 'nuevo producto';
  writeln(sizeof(p^), ' bytes');
  p^.precio := 200;
  writeln(sizeof(p^), ' bytes');
  prod.codigo := 2;
  prod.descripcion := 'otro nuevo producto';
  writeln(sizeof(prod), ' bytes');
End.
