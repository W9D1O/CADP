{
  7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

 }

program eje7;

const
  fin = 100;

var
  nombre,nompri1,nompri2,nomult1,nomult2:string[31];
  tiempo,tpomin1,tpomin2,tpomax1,tpomax2:integer;
  i:integer;

begin
  nompri1:= '-1';
  nompri2:='-1';
  nomult1:='-1';
  nomult2:='-1';
  tpomin1:= maxint;
  tpomin2:= maxint;
  tpomax1:= -1;
  tpomax2:= -1;
  for i:= 1 to fin do
    begin
      writeln('Ingrese el nombre del piloto: ');
      readln(nombre);
      writeln('Ingrese el tiempo(en segundos) que le tomo al piloto terminar la carrera: ');
      readln(tiempo);
      if(tiempo < tpomin1)then
        begin
          tpomin2:= tpomin1;
          nompri2:=nompri1;
          tpomin1:= tiempo;
          nompri1:= nombre
        end
        else
          if(tiempo < tpomin2)then
            begin
              tpomin2:= tiempo;
              nompri2:= nombre
            end;
      if(tiempo > tpomax1)then
        begin
          tpomax2:= tpomax1;
          nomult2:= nomult1;
          tpomax1:= tiempo;
          nomult1:= nombre
          end
          else
            if(tiempo > tpomax2)then
              begin
                tpomax2:= tiempo;
                nomult2:= nombre
              end;
    end;
  writeln('Los pilotos mas veloces fueron: ',nompri1,' y ',nompri2);
  writeln('Los ultimos pilotos e n completar el circuito fueron: ',nomult1,' y ',nomult2)

  end.
