Program EjArreglo6;
Uses crt;
Var
 Alumnos : array [1..3,1..4] of integer;
j,i :integer;
B,c: real;
begin
writeln('Ingrese notas') ;
For i:= 1 to 3 do
  begin
    writeln('Alumno ' ,i , ' Ingrese nota de sus 4 parciales ');
     For j:= 1 to 4 do

     read(Alumnos[i,j]);
  end;

  Writeln;
  writeln;
  For i:= 1 to 3 do
         begin
         writeln('Alumno ' ,i , ' Y sus 4 notas del parical ');
          For j:= 1 to 4 do
          writeln(Alumnos[i,j]);
         end;

readkey
end.





