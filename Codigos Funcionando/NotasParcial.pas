Program Parcial;
uses crt;
var
i,j,may,nro,parc :integer;
AL : Array[1..4,1..5] of integer;
begin
 For i:= 1 to 4 do
  begin
    Write('Ingrese noro de alumno y las notas');
     For j:=1 to 5 do
       Readln(Al[i,j]);
   writeln;
  end;
  May:=0;
  For i := 1 to 4 do
    For j:=2 to 5 do
      if AL[i,j]>May then
        begin
        May:=al[i,j];
        nro:=al[i,1]  ;
        parc:=j-1
        end;
   writeln('La mayor nota fue: ', may ,' y corresponde al alumno ' ,nro ,' en el parcial numero ',parc);
   readkey
   end.

