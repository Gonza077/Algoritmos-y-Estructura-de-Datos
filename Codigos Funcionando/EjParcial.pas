Program EjParcial;
uses crt;
Procedure Carga_Sucur;
var
Sucursales,Monto_Sucur : array [1..20] of integer;
i : integer;
begin
For i := 1 to 20 do
 begin

   Monto_Sucur[i]:=0;
  end;
end;


Procedure Cuerpo_programa;
Var
Sucursales,Monto_Sucur : array [1..20] of integer;
monto, sucur : integer;
begin
      repeat
         Writeln('Ingrese numero de surcursal'); readln(sucur);
      until (sucur>0) and (sucur<=20) ;
While (sucur <>0) do
  begin
       writeln('Ingrese codigo de sucursal');
       readln(sucursales[sucur]);
       writeln('Ingrese Monto de la sucursal');
               readln(Monto);
    Monto_Sucur[Sucur]:= Monto_Sucur[Sucur]+Monto;
    repeat
         Writeln('Ingrese numero de surcursal o 0 para finalizar'); readln(sucur);
      until (sucur>=0) and (sucur<=20);
  end;
end;

Procedure Muestro_Listado;
var
  Sucursales,Monto_Sucur : array [1..20] of integer;
  i : integer;
begin
  For i:= 1 to 20 do
  Writeln('La sucursal  ' , Sucursales[i] , '  Recaudo un monto total de $ = ', Monto_Sucur[i]);
end;

Begin
Carga_Sucur;
Cuerpo_Programa;
Muestro_Listado;
readkey
end.
