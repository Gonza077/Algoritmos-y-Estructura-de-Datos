Program Ej8BIDI;
Uses crt;
Var
Jugador: array [1..3,1..4] of REAL ;
i,j,jug :integer;
letra : char;
aux : real;
Begin
For i:= 1 to 3 do
  Jugador[i,1]:=i;


repeat
  writeln('Ingrese numero de jugador');
  readln(jug);
until (Jug>0) and (jug<=3);
while jug<>0 do
 begin
      repeat
        Writeln('Ingrese inicial del resultado del partido');
        readln(Letra);
      until (Letra='P') or (Letra='G');
      If Letra ='G' then
                      begin
                      Jugador[Jug,4]:=Jugador[Jug,4]+3;
                      Jugador[Jug,2]:=Jugador[Jug,2]+1;
                      end
                    else
                      begin
                       Jugador[Jug,3]:=Jugador[Jug,3]+1;
                      end;

       repeat
          writeln('Ingrese numero de jugador o 0 para finalizar');
          readln(jug);
       until (Jug>=0) and(jug<=3);

end;
 Writeln;
 writeln;
Writeln('     NroJugador  Partidos Ganados  Partidos Perdidos  Puntaje    ');



 For i:= 1 to 3 do
 begin
    For
      J:= 1 to 4 do
       Write(Jugador[i,j]:15:0);;
       writeln;
 end;

readkey
end.
