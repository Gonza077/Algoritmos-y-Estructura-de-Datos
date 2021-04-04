Program Ej7;
uses crt;
Var
b: boolean;
a,c,d,i  :integer;
Arreglo : array [1..10] of integer;
begin
  writeln('Hola, Bienvenido, por favor ingrese los 10 numero');
  For a:= 1 to 10 do
  readln(Arreglo[a]);


  b:=ODD(ARREGLO[10]);
  writeln;
  writeln(b);
  writeln;
d:=1;
c:=0;
  if b=TRUE then
    begin
        for i :=1 to 5 do
         begin
            arreglo[d]:=0;
            d:=d+2;
         end;
      end
             else
     begin
      for i:=1 to 5 do
       begin
        Arreglo[c]:= 0;
        c:=c+2;
       end;
     end;
  for a :=1 to 10 do
  writeln(arreglo[a]);
readkey
end.


