Program Ej3Bidi;
uses crt;
var
Arreglo : array[1..4,1..3] of real;
n,SumadorEdad,edad,i,j,c :integer;
aux,posicion,m,comision :real;

begin

For i := 1 to 4 do
  Arreglo[i,1]:= i ;


 repeat
   writeln('Ingrese numero de comision ');
   Read(n);
  until (n>0) and (n<=4);
SumadorEdad:=0;
while n<>0 do

  begin
           WRITELN('Ingrese su edad por favor');
           Read(Edad);
           Arreglo[n,3]:=Edad +Arreglo[n,3];
           Arreglo[n,2]:=Arreglo[n,2]+ 1;
           Arreglo[n,3]:=Arreglo[n,3]/Arreglo[n,2];
     repeat
      writeln('Ingrese numero de comision o pulse 0 para finalizar');
      Read(n) ;
     until (n>=0) and (n<=4);

  end;

Writeln  ;
writeln;
Writeln('Nro Comision-Cantidad Alumnos-Promedio edad');

for i :=1 to 4 do
 begin
    for j :=1 to 3 do

     Write(Arreglo[i,j]:11:0);;
     writeln;
 end;
M:=0;
for i :=1 to 4 do
 begin
    for j :=1 to 3 do
    If Arreglo[i,j]> M then
    begin
     M:=Arreglo[i,j];
     Comision:=Arreglo[i,1];
     end;
 end;

Writeln('El mayor promedio de edad fue ', M:0:0 , ' Y pertenece a la comision ', Comision:0:0);




readkey
end.

