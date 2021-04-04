Program Ej13ArrregloUNI;
Uses crt;
var
coche: array[1..5]of integer;
Costo_Viaje: array [1..5] of real;
i,num_COche :integer;
Costo : real;

Begin
 for i :=1 to 5 do
  begin
  Costo_Viaje[i] :=0;
  coche[i]:=i;
  end;
 Repeat
   Writeln('Ingrese numero de coche, por favor');
   read(Num_Coche);
 Until (Num_Coche>0) and (Num_coche<=5) ;
   While Num_Coche<>0 do
    begin
     Writeln('Ingrese cantidad de horas de coche');
     Read(Costo);
     Costo_Viaje[Num_Coche]:= (Costo_Viaje[Num_Coche]+Costo);
     Repeat
       Writeln('Ingrese numero de coche o Pulse 0 para finalizar el proceso');
       read(Num_Coche);
     Until (Num_Coche>=0) and (Num_coche<=5) ;
    end;
    For i := 1 to 5 do
        begin
        Write('El coche numero ' , Coche[i], ' Recaudo un total de $ = '); Writeln (Costo_Viaje[i]:0:3) ;

         end;

readkey
end.
