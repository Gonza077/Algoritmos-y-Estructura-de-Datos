Program asdasds;
uses crt;
var
boletos,codigo:array[1..25]of integer;
j,co,cant_bol,c:integer;
procedure carga_datos;


begin
repeat
writeln('ingrese codigo 1-999');
readln(co);
until ((co>=1) and (co<=999));

while co <>0 do
     begin
     writeln('ingrese la cantidad de boletos');
     readln(cant_bol);

     Boletos[co]:= Cant_Bol + Boletos[co];

     repeat
     writeln('ingrese codigo 1-999 o pulse 0 para finalizar');
      readln(co);
     until ((co>=0) and (co<=999));

 end;

end;

procedure inicializo;
begin
for j:=1 to 25 do
begin
 codigo[j]:=0;
 boletos[j]:=0;
     end;
     end;

     procedure listado;
     begin
     writeln('codigo de colectivo___cantidad boletos');
      for j:=1 to 25 do
      begin
      writeln(j,'              ',codigo[j],'            ',boletos[j]);
      end;


     end;


begin
inicializo;
carga_datos;
listado;
readkey;
end.
