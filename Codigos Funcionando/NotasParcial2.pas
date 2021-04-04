Program Parcial;
uses crt;
var
i,j,k,aux  :integer;
AL : Array[1..4,1..5] of integer;
begin
 For i:= 1 to 4 do
  begin
    Write('Ingrese nro de alumno y las notas');
     For j:=1 to 5 do
       Readln(Al[i,j]);
   writeln;
  end;
 For i := 1 to 3 do
     For j:= 2 to 4 do
        If AL[i,1]<Al[J,1] then
                     For K:= 1 TO 5 DO
                        BEGIN
                          AUX:= AL[J,K];
                          AL[J,k]:=AL[I,K];
                          AL[I,K]:=AUX;
                        END;

TEXTCOLOR(GREEN);
writeln('ALUMNO  Nota 1  Nota 2  Nota 3  Nota 4  Nota 5');
textcolor(red);
for i :=1 to 4 do
 begin
    for j :=1 to 5 do

     write(AL[I,J]:8);
     writeln;

 end;
 readkey
 end.
