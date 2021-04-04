Program Final170816;
uses crt;
type
   registro1 = record
                 patente : String[7];
                 tipo_vehi,hora_Desde,Hora_hasta,Cmax: integer;
                 Ocupado : boolean;
                end;
     registro2 = record
                 dni: String[10];
                 Nombre :String[30];
                 Hora_inicio,Hora_Fin,Tipo_vehi : integer;
                 Ocupado : boolean;
                 end;
archivo1 = file of registro1;
archivo2 = file of registro2;

var
opc : char;
arch1 : archivo1;
arch2 : archivo2;
reg1 : registro1;
reg2 : registro2;
cantidad,Hora_Desde,Hora_Hasta : integer;

Procedure Ordeno_Vehiculos;
var
i,j : integer;
aux : registro1;
begin
  For i:=0 to filesize(arch1)-2 do
        for j :=i+1 to filesize(arch1)-1 do
             begin
                   seek(arch1,i);
                   read(arch1,reg1);
                   seek(arch1,j);
                   read(arch1,aux);
                        if   reg1.Patente < aux.Patente then
                                  begin
                                             seek(arch1,i);
                                             write(arch1,aux);
                                             seek(arch1,j);
                                             write(arch1,reg1);

                                   end;

             end;

end;

Procedure Cargo_Archivo1;
var
num1: char;
begin
num1:='S';
   while num1<>'N'  do
     begin
          writeln('Ingrese Patente'); readln(reg1.Patente);
          Writeln('Ingrese tipo de vehiculo 1/2/3'); readln(reg1.Tipo_Vehi);
          writeln('Ingrese Hora inicio y Hora fin ( 24 hs ), pulse enter para continuar'); readln(reg1.Hora_Desde,Reg1.Hora_Hasta);
          writeln('Ingrese capacidad maxima');
          readln(reg1.Cmax);
          Reg1.Ocupado:=False;
          write(arch1,reg1);
          writeln('Ingrese opcion S/N para continuar');
          repeat
                readln(num1);
                num1:=upcase(num1);
          until (num1='S') or (num1='N');
     end;
   Ordeno_Vehiculos;
end;


Procedure Cargo_Archivo2;
var
num :char ;
begin
num:='S' ;
 while num<>'N' do
     begin
       writeln('Ingrese DNI'); readln(reg2.DNI);
       writeln('Ingrese Nombre y Apellido'); readln(Reg2.Nombre);
       writeln('ingrese hora inicio/fin del turno'); readln(reg2.Hora_Inicio,reg2.Hora_Fin);
       reg2.Ocupado:=False;
       write(arch2,reg2);
       writeln('Ingrese opcion S/N para continuar');
       repeat
          readln(num);
          num:=upcase(num);
       until (num='S') or (num='N');
     end;
end;


procedure Abro_Archivos;
begin
    assign(arch1,'c:\Vehic.dat');
             repeat
             writeln('Desea crear archivos Vehiculos S/N'); readln(opc);
             opc:=upcase(opc);
             until (opc='S') or (opc='N');
                 if opc='S'  then
                                begin
                                 Rewrite(arch1);
                                 Cargo_Archivo1;
                                 end
                              else
                                  Reset(arch1);
    assign(arch2,'c:\Chof.dat');
             repeat
             writeln('Desea crear archivo Choferes S/N'); readln(opc);
             opc:=upcase(opc);
             until (opc='S') or (opc='N') ;
                 if (opc='S')  then
                                begin
                                 Rewrite(arch2);
                                 Cargo_Archivo2;
                                 end
                              else
                                  Reset(arch2);

end;

Procedure Cierro_Archivos;
begin
close(arch1);
close(arch2);
end;

Procedure UnChoferMas;
begin
     seek(arch2,filesize(arch2));
     read(reg2.DNI,reg2.Nombre,Reg2.Tipo_Vehi,reg2.Hora_Inicio,reg2.Hora_Fin);
     reg2.Ocupado:=False;
     write(arch2,reg2);
end;

Function Dico(Var A: String[10]):Boolean ;
var
band : boolean;
inf,sup,med :integer;
begin
inf:=0;
sup:= filesize(arch1)-1;
band:=false;
 while  not(eof(arch1)) and (inf<=sup) and (band=False) do
           begin
                        med:=(inf+sup) DIV 2;
                        seek(arch1,med);
                        read(arch1,reg1);
                                     if (A=Reg1.Patente) then
                                                      band:=True
                                                      else
                                                           if (A>Reg1.Patente) then
                                                                               sup:=med-1
                                                                               else
                                                                               inf:=med+1
           end;
           if (band=true) then
                        Dico:=true;

end;

Procedure Retorno_Chofer;
var
DNI : String[10];
begin
writeln('Ingrese DNI');
readln(DNI);
seek(arch2,0);
               while not(eof(arch2)) and (DNI=Reg2.Dni) do
                                     begin
                                      read(arch2,reg2);
                                        if   (DNI=Reg2.Dni) then
                                                              begin
                                                                  seek(arch2,filepos(arch2)-1);
                                                                  reg2.Ocupado:=False;
                                                                  write(arch2,reg2);
                                     end;                      end;
end;

Procedure Retorno_VehiChofer;
var
patente : String[7];
begin
seek(arch1,0);
writeln('Ingrese patente');
readln(Patente);
                 If Dico(Patente)=true then
                                         begin
                                           Seek(arch1,filepos(arch1)-1);
                                           reg1.Ocupado:=False;
                                           write(arch1,reg1);
                                           Retorno_Chofer;
                                         end;
end;
Function Calculo_Tipo(var B: integer):integer;
begin
if (B>=1) and (B<=5) then
                                           B:=1
                                           else
                                               if (B>5) and (B<=11) then
                                                                    B:=2
                                                                     else
                                                                      if (B>11) and (B<=21) then
                                                                                            B:=3;
            if (b>=1) and (b<=3)then
            Calculo_tipo:=B;

end;

Function Caben(var A: integer):boolean;
begin

                if (Calculo_Tipo(A)=Reg1.Tipo_Vehi) then
                                       caben:=true;

end;

Function Disponible( Var b,c,d,e :Integer):boolean;
begin
         if (D<=B) and (E>=C) then
                        Disponible:=True;
end;

Procedure Alquilo_Chofer;
var
band2 : boolean;
begin
band2:=false;
Seek(arch2,0);
    while not(eof(arch2)) and (band2=False)  do
       begin
           read(arch2,reg2);
                      if (reg2.Ocupado=False) then
                                           begin
                                             if   (Calculo_Tipo(Cantidad)>=1) and  (Calculo_Tipo(Cantidad)<=3) then
                                                                                                     if Disponible(Hora_Desde,Hora_Hasta,Reg2.Hora_Inicio,Reg2.Hora_Fin)=true then
                                                                                                                                                         begin
                                                                                                                                                           writeln('Nombre y DNI del Chofer ',reg2.Nombre,' ',reg2.DNI);
                                                                                                                                                           seek(arch2,filepos(arch2)-1);
                                                                                                                                                           reg2.Ocupado:=True;
                                                                                                                                                           write(arch2,reg2);
                                                                                                                                                           band2:=True;
                                             end
                                            else                                                                                                           end ;
                                            writeln('Vehiculo sin chofer');

       end;

end;

Procedure Alquiler_VehiChofer;
var
band :boolean;
begin
writeln('Ingrese Cantidad de personas'); readln(Cantidad);
writeln('Ingrese Hora De uso y Hora fin de uso'); readln(Hora_Desde,Hora_Hasta);
seek(arch1,0);
band:=false;
       while not(eof(arch1)) and (band=false)  do
           begin
                read(arch1,reg1);
                         if (reg1.Ocupado=False)  then
                                                   if Caben(Cantidad)=true then
                                                                       if Disponible(Hora_Desde,Hora_Hasta,reg1.Hora_Desde,reg1.Hora_Hasta)=true then
                                                                                                                  begin
                                                                                                                       writeln(reg1.Patente);
                                                                                                                       writeln(reg1.Cmax);
                                                                                                                       writeln(reg1.Hora_Desde);
                                                                                                                       writeln(reg1.Hora_Hasta);
                                                                                                                       seek(arch1,filepos(arch1)-1);
                                                                                                                       reg1.Ocupado:=True;
                                                                                                                       write(arch1,reg1);
                                                                                                                       band:=true;
                                                                                                                       Alquilo_Chofer;
                                                                                                                  end

            end;
end;


Procedure Menu;
begin
writeln('Ingrese opcion');
writeln('A(Alquiler de vehiculo y chofer)');
writeln('B (Alquiler Chofer)');
writeln('C (Retorno de un vehiculo con chofer)');
writeln('D (Retorno Solamente del chofer)');
Writeln('E (Agregar un chofer al registro)');
   readln(opc);
   opc:=upcase(opc);
               while (opc<>'F') do
                 begin
                     case opc of
                          'A' : Alquiler_VehiChofer;
                          'B' : begin writeln('Ingrese cantidad, Hora desde/Hasta');readln(cantidad,Hora_Desde,Hora_Hasta);Alquilo_Chofer;  end;
                          'C' : Retorno_VehiChofer;
                          'D' : Retorno_Chofer ;
                          'E' : UnChoferMas;
                         end;
                     menu;
                   end;
end;


Begin
Abro_Archivos;
menu;
Cierro_Archivos;
readkey;
end.

