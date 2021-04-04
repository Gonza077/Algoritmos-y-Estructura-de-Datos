Program TuPutaMadre;
Uses crt;
Var
i,j : integer;
alumnos : array [1..4,1..5] of real;
a,b,c,resp : char;

z,y,x,contador1,Contador2,Contador3 : real;

Procedure CargaAlumnos;
          Begin
               For i := 1 to 4 do
                   For j:= 1 to 5 do
                        readln(Alumnos[i,j]);
           end;

Procedure Promedio1;
        Begin
          contador1:=0;
               For i:=1 to 4 do
                   For j:= 1 to 5 do

                       Contador1:=(Contador1+Alumnos[i,j]);
         Writeln('El promedio de todas las notas son = ',(Contador1 /20):0:0) ;
        end;
Procedure promedio2;
          Begin
               Contador2:=0;
                  For i:=1 to 4 do
                    begin
                     For j:= 1 to 5 do
                     Contador2:=(Contador2+Alumnos[i,j]);

                       Writeln('El promedio del alumnno ', i ,' es = ', (Contador2 / 5):0:0);
                        if (j=5) then
                                 Contador2:=0;
                        end;

            end;

  Procedure Promedio3;
    Begin

         For i:= 1 to 5 do
           Begin
            Contador3:=0;
                         For j:= 1 to 4 do
                         Contador3:=(Contador3+Alumnos[j,i]);
                         writeln('Promedio del examen ', i , ' = ', (Contador3 / 4):0:0)

            End;

     end;

 Procedure Menu ;
 Begin
    repeat
     writeln('Ingrese a, b , c para comenzar');
       readln(resp);
       resp:=upcase(resp);
   until ((resp='A') or (resp='B')or (Resp='C')) ;
     While (Resp<>'.') do
         Begin
            Case Resp of
                 'A' : Promedio1;
                 'B' : Promedio2;
                 'C' : Promedio3;
                 end;
                 repeat
                       writeln('Ingrese a, b , c para calcular otro promedio o . para finalizar');
                       readln(resp);
                        resp:=upcase(resp);
                 until ((resp='A') or (resp='B')or (Resp='C') or (Resp='.'));
            end;
    Writeln('Las notas se mostraran en forma de matriz');

    For i:= 1 to 4 do
        Begin
       Writeln( 'Alumno ',i );
        For
           J:= 1 to 5 do
           begin
             write(' Parcial ', j);
              writeln(Alumnos[i,j]:15:0);
            end;
            writeln;
          End;
   end;

Begin
CargaAlumnos;
Menu;
readkey
end.
