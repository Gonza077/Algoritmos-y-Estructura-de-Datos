Program Ej3Bid;
Uses crt;
Var
I,J :INTEGER;
A,B :ARRAY[1..3,1..3] OF integer;
c    :ARRAY[1..3,1..3] OF real;
begin
writeln('Ingrese elementos de la matriz A');
For i:=1 to 3 do
   For j:=1 to 3 do
      Readln(A[I,J]);
writeln('Ingrese elementos de la matriz B');
For i:=1 to 3 do
   For j:=1 to 3 do
   Readln(b[i,j]);

 For i:=1 to 3 do
   For j:=1 to 3 do
   c[i,j]:=A[i,j]+B[i,j];
writeln('Punta a)')   ;
writeln('A continuacion se mostrara el arreglo A ');

For i:=1 to 3 do
   For j:=1 to 3 do
       write(A[I,J]);
       writeln;
writeln('A continuacion se mostrara el arreglo B ');
For i:=1 to 3 do
   For j:=1 to 3 do
     write(B[I,J]);
     writeln;
writeln('A continuacion se mostrara el arreglo C = A+B ');
For i:=1 to 3 do
   For j:=1 to 3 do
   write(C[I,J]:0:0);
   writeln;
writeln;
writeln('Punto b)') ;
writeln('Ahora viene al lado del otro');

For i:=1 to 3 do
   For j:=1 to 3 do
       write(A[I,J]);
       write('            ');
For i:=1 to 3 do
   For j:=1 to 3 do
     write(B[I,J]);
     write('            ');
For i:=1 to 3 do
   For j:=1 to 3 do
   write(C[I,J]:0:0);
   write('            ');

readkey
end.
