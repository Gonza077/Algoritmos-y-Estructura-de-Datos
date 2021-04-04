Program Busqueda;
Uses crt;
Var
i,inf,sup,med,n :integer;
Vec : Array[1..10] of integer;
Begin
  For i := 1 to 10 do

            Vec[i]:= 2*i         ;


Writeln('Ingrese Numero A buscar');
read(N);
inf:=1;
sup:=10;
med:=5;
     While(Inf<=Sup) and (n<>VEC[Med])do
       begin
         If n<Vec[Med]then
                            sup:=med-1
                        else
                            inf:=med+1;
          med:=(inf+sup) DIV 2;
       end;

If n<>VEC[Med]
               then
                Write('El Valor ' , n , ' No fue encontrado :( CTM ' )


               else
                writeln('El valor ' , n , ' Se encuentra en la posicion ' ,Med );
readkey
end.
