Program Easdas;
Uses crt;
Var
 aux , Horas2 : integer;
 j , aux_Letra , i , codigo2 : char;
 Codigo :Array ['A'..'L'] of char;
 Horas  :Array ['A'..'L'] of INTEGER;
Begin
for i := 'A' to 'L' do
    begin
    Codigo[i]:= i;
    Horas[i]:= 0;
    end;
  Repeat
   Writeln('Ingrese Letra del avion por favor');
   Readln(codigo2);
  until (Codigo2>='A')and (Codigo2<='L');
     While (Codigo2) <> 'M' do
     begin
     Writeln('Ingrese cantidad de horas de vuelo');
     readln(Horas2);
     Horas[Codigo2]:=Horas[Codigo2]+ Horas2;
     Writeln('Ingrese M para terminar la operacion');
        Repeat
        Writeln('Ingrese letra de Avion por favor');
        Readln(Codigo2);
        until (codigo2>='A') and (codigo2<='M');
     end;
  FOR I:='A' TO 'K'do
    Begin
      For J :='A' to 'L' do

       begin
        If Horas[J]<Horas[I] then
         begin
           Aux:=Horas[i];
           Horas[i]:=Horas[j];
           Horas[j]:=Aux;
           Aux_Letra:=Codigo[i];
           Codigo[i]:=Codigo[j];
           Codigo[j]:=Aux_letra;
         end;
       end;
     end;
Writeln('Codigo de Avion -- Total de horas de vuelo');
  For J:= 'A' to 'L' do
  BEGIN
   write('El avion ',  Codigo [J] , ' Hizo ');
  writeln( Horas [J],' Horas de vuelo ');
  end;
readkey
 end.


