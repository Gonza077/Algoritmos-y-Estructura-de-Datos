Program Ej3PracticaArchivos;
Uses crt;
type
T_Comi = record
            legajo,edad : integer;
            nombre : string[25];

           end;
archivo = file of t_comi;

var
arch     : archivo;
reg,aux        :t_comi;
i,j,opc,legajo,inf,sup,med  :integer;
opc1            :char;
band : boolean;

Procedure OrdenaLegajos;
begin
   For i:=0 to filesize(arch)-2 do
        for j :=i+1 to filesize(arch)-1 do
             begin
                   seek(arch,i);
                   read(arch,reg);
                   seek(arch,j);
                   read(arch,aux);
                        if   reg.Legajo < aux.legajo then
                                  begin

                                             seek(arch,i);
                                             write(arch,aux);

                                               seek(arch,j);
                                               write(arch,reg);

                                   end;

             end;
end;


Procedure UnRegistromas;
begin
assign(arch,'C:\Archivo.dat');
reset(arch);
opc1:='S';
while (opc1<>'N') do
        begin
           seek(arch,filesize(arch));
           writeln('Nombre del Alumno'); readln(reg.Nombre);
           writeln('Legajo '); readln(reg.legajo);
           writeln('Edad ') ;readln(reg.Edad);
           write(arch,reg);
           Repeat
               Writeln('Desea agregar otro alumno (s), (n) para finalizar');
               Readln(opc1);
               opc1:=upcase(opc1);
               until (opc1='S') or (opc1='N');
          end;
OrdenaLegajos;
close(arch);
end;

Procedure AlumnoCarga;
begin
clrscr;
 assign(arch,'C:\Archivo.dat');
 rewrite(arch);
    opc1:='S';
      while opc1<>'N' do
              begin
                  writeln('Ingrese Legajo'); readln(reg.legajo);
                  writeln('Ingrese edad');   readln(reg.edad);
                  writeln('Ingrese nombre'); readln(reg.nombre);
                  write(arch,reg);
                                  repeat
                                      writeln('Ingrese S/N para continuar');
                                      readln(opc1);
                                      opc1:=upcase(opc1);
                                   until (opc1='S') or (opc1='N');
              end;
        OrdenaLegajos;
  close(arch);
end;

Function Dico(Var A:integer):Boolean;
Begin
Assign(arch,'C:\Archivo.dat');
reset(arch);
inf:=0;
sup:=filesize(arch)-1 ;

    While Not(eof(arch)) and (inf<=sup) and(band=false) do
                begin
                     med:=(inf+sup) DIV 2;
                     seek(arch,med);
                     read(arch,reg);
                         If   A=Reg.Legajo  then
                                            band:=true
                                            else
                                           if A>reg.legajo then
                                                           sup:=med-1
                                                           else
                                                           inf:=med+1;


                  end;
                  if band=true then
                     Dico:=true
                     else
                     dico:=false;
band:=false;
close(arch);
end;

Procedure  BusquedaLeg;
begin
clrscr;
   writeln('Ingrse legajo a buscar por favor');
     readln(Legajo);
            if dico(legajo)=true then
                                 begin
                                      writeln('Alumno ',reg.Nombre);
                                      writeln('Edad ',reg.edad);
                                      writeln('Legajo',reg.legajo);
                                 end
                                 else
                                 writeln('No Se encontro ese legajo');

readkey;
end;

Procedure MuestroArch;
begin
Assign(arch,'C:\Archivo.dat');
reset(arch);
clrscr;
   while not eof(arch) do
         begin
            read(arch,reg);
            writeln('Alumno  : ',Reg.Nombre);
            writeln('Legajo : ',reg.legajo);
            writeln('Edad : ',reg.Edad);
           end;
close(arch);
readkey;
end;



Procedure Menu;
begin

 clrscr;
          repeat
                writeln('Ingrese opc');
                writeln('1(Crear Archivo)');
                writeln('2(Agregar Un Registro)');
                writeln('3(Buscar un legajo)');
                writeln('4(Ver el Archivo)');
                writeln('0 Para CERRAR EL PUTO PROGRAMA Y DEJARM EN PAZ') ;
                readln(opc);
           until (opc=1) or (opc = 2) or (opc=3) or (opc=0) or (opc=4);
     while opc<> 0 do
    begin
        case opc of
                 1: AlumnoCarga;   {LISTO}
                 2: UnRegistroMas;  {Listo}
                 3: BusquedaLeg;    {Listo}
                 4: MuestroArch;    {Listo}
                end;
                menu;
     end;
end;


begin
clrscr;
textcolor(11);
menu;
writeln('Pulse una tecla para finalizar');
readkey
end.

