Program ArregloEjMatriz;
Uses crt;
Procedure Carga_Tabla;
Var
Tab : array [1..3,1..3] of Real ;
Fil,Col :integer;
Begin
Writeln('Ingrese elementos de la matriz');
For Fil:= 1 to 3 do
  begin
   for col:=1 to 3 do
    readln(Tab[fil,col])
  end;
end;

Procedure Suma_DP ;
Var
Tab : array [1..3,1..3]of Real;
k :integer;
suma :real;
begin
 suma:=0;
  For k:= 1 to 3 do
   suma:=suma + Tab[K,K];
Writeln('Suma Diagonal Principal = ',suma:0:0);
end;

Procedure Suma_DS;
var
Tab : array [1..3,1..3]of Real ;
suma2,sumaD,suma,SumaS  : real;
k ,i,j: integer;
Begin

 SumaD:=0;
 Suma2:=0;
   For k:= 1 to 3 do
    begin
    Suma2:=Suma2+Tab[k,4-k];
    suma:=suma + Tab[K,K];
    end;

    Writeln('La suma de la diagonal Secundaria es = ', suma2:0:0);
    Writeln;
sumaD:=(Suma - Suma2);
SumaS:=(Suma + Suma2);
Writeln('El determinante de la matriz es = ',SumaD:0:0);
writeln;
writeln;
Writeln('La suma de las diagonales son = ',SumaS:0:0);
writeln;

Writeln('La Matriz es la siguiente ');

 For i := 1 to 3 do
      Begin
        For j :=1 to 3 do
          Write(Tab[i,j]:0:0);
          writeln;
       end;
end;

Begin
Carga_Tabla;
Suma_DP;
suma_DS;
readkey
end.

