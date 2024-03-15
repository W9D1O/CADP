{
 5. a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de
pares en las que numB es el doble de numA.
Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores
4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).

 }

program tp2ej5;


function doble(a,b: integer): boolean;
begin
  if a * 2 = b then
    doble := True
  else
    doble := False;
end;

procedure pares(a,b:integer);

var
  d: boolean;
  par, pard: integer;

begin
  par:= 0;
  pard := 0;
  
  writeln('Ingrese el primer valor: ');
  readln(a);
  writeln('Ingrese el siguiente valor: ');
  readln(b);
  while(a <> 0) and (b <> 0) do
    begin
    if(a mod 2 = 0) and (b mod 2 = 0)then 
    
      par := par + 2
    else
      if a mod 2 = 0 then
        par := par + 1
      else
      if b mod 2 = 0 then
        par := par + 1;
    d := doble(a,b);
    if d then
      pard := pard + 1;

    writeln('Ingrese el primer valor: ');
    readln(a);
    writeln('Ingrese el siguiente valor: ');
    readln(b);
    end;
  writeln('La cantidad de pares encontrados fueron: ',par,' y la cantidad de veces donde b es el doble de a es: ',pard);

end;

var
  a,b : integer;

  begin
    pares(a,b)
  end.






