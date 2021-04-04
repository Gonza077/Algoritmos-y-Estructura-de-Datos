Program Ej13ArregloUNI;
Uses crt;
Procedure Inicio_Prog;
var
coche: array[1..5]of integer;
Costo_Viaje: array [1..5] of real;
i: integer;
begin
 for i :=1 to 5 do
  begin
  Costo_Viaje[i] :=0;
  coche[i]:=i;
  end;
end;

Procedure Cuerpo_Prog;

var
num_coche : integer;
coche: array[1..5]of integer;
Costo_Viaje: array [1..5] of real;
costo :real;
begin
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
end;

procedure Muestro_Arreglo;
var
i:integer;
coche: array[1..5]of integer;
Costo_Viaje: array [1..5] of real;
begin

For i := 1 to 5 do
        begin
       Write('El coche numero ' ,  Coche[i+1] , ' Recuado un total de $ =  ' ) ;   writeln (Costo_Viaje[i]:0:3 ) ;

       end;
end;

begin
Inicio_Prog;
Cuerpo_Prog;
Muestro_Arreglo;
readkey
end.
