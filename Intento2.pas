Program EjArreglo8BI;
Uses crt;
Var

Num_Jug        : array [1..4,1..5] of integer;
i,Partidos,j      : integer ;
letra      : Char;


Begin

Partidos:=0;


    For i:= 2 to 4 do
        for j := 2 to 5 do
          Num_Jug[i,j]:=0;

For i:= 1 to 4 do

 begin
  Writeln(' Jugador ', i , ' Su turno de ingresar Partidas');




                            Writeln('Ingrese Tipo de resultado');
                            Read(letra);

           While (Letra<>'F') do
               begin
                 If letra='G' then
                                   begin
                                      Num_jug[i,j]:=Num_Jug[i,j]+1;
                                      Partidos:=Partidos+3;
                                    end
                               else
                                   begin
                                         Num_jug[i,j+1]:=Num_Jug[i,j+1]+1;
                                         Partidos:=Partidos+0;
                                   end;

                          Repeat
                            Writeln('Ingrese Tipo de resultado o pulse F para finalizar el jugador actual');
                            Read(letra);
                          until (Letra='G')and (Letra='P')and (Letra='F');

               end;

  end;
  For i:= 1 to 4 do
    begin
        for j := 2 to 5 do
           begin
             write(Num_Jug[i,j]);
             writeln;
            end;

     end;
readkey
end.
