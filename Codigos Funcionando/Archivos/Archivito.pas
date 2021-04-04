Program GG;
uses crt;
Type
Elemen = record
               Codi_Art : 'A'..'X';
               Des_Art : String[30];
               Precio  : real;
               Stock   : integer;
           end;
Arch= file of Elemen;
var
opcion :integer;

Procedure crea_archivos;
var
   A_Elemen : Elemen;
   Rg_A : Arch;
   a: char;
begin
Assign(Rg_A ,'C:\Users\Mellis\Z\Empresa.dat');
rewrite(Rg_A);
a:='s';
while (a='s') do
  begin
                        Writeln('Ingrese codigo de articulos');
                        readln(A_Elemen.Codi_Art);
                        Writeln('Ingrese descripcion de articulo');
                        Readln(A_Elemen.Des_Art);
                        Writeln('Ingrese Preci odel producto');
                        Readln(A_Elemen.Precio);
                        Writeln('Stock disponible');
                        Readln(A_Elemen.Stock);

                  write(Rg_A,A_Elemen);

                    Repeat
                      Writeln('Desea colocar otro producto s o n(Finalizar)');
                      Readln(a);
                    until (a='s') or (a='n');


 end;
seek(rg_a,0);
while not eof(Rg_a) do
 begin
 read(Rg_A,A_Elemen);
 write('Codigo del producto: ') ; writeln(A_Elemen.Codi_Art);
 write('Descripcion: ') ;         writeln (A_Elemen.Des_Art);
 write('Precio del Producto: ') ; writeln (A_Elemen.Precio:0:2);
 write('Stock disponible: ') ;    writeln (A_Elemen.Stock);
 end;
Close(Rg_A);
end;

Procedure Facturacion;
var
   A_Elemen : Elemen;
   Rg_A : Arch;
   Codi: char;
   cliente,canti: integer;

  begin
            Writeln('Ingrese numero de cliente');   Readln(Cliente);
            Writeln('Ingrese codigo del producto'); Readln(Codi);
            Writeln('Ingrese cantidad a comprar'); Readln(Canti);

            reset(rg_A);
                        While not eof(Rg_A)do
                         begin
                          Read(Rg_A,A_Elemen);
                         If (Codi = A_Elemen.Codi_Art) then
                                 A_Elemen.Stock:= (A_Elemen.Stock - Canti );
                                 Seek(Rg_A,(filepos(Rg_A)-1));
                                 Write(Rg_A,A_Elemen);

                         end;
end;
Procedure menu_opc;
Begin

     writeln('(1) Creacion de archivos');
     writeln('(2) Facturacion');
     writeln('(3) Actualizacion!');

     repeat
           write('Ingresa opcion: '); readln(opcion);
     until (opcion>=1) and (opcion<=3);

     case opcion of

     1: Begin crea_archivos End;
     2: Begin facturacion End;
     3: Begin halt(0) End;


End;
End;

Begin

menu_opc;
readkey
end.

























