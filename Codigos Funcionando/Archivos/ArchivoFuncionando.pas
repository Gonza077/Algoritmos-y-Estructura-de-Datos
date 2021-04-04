Program ADASDASD;
Uses crt;
Type
    Reg = record
          Nom_Alu : String[20] ;
          Codi_A : String[1];
          Notas  : Array [1..5] of integer;
          end;
Archi = file of reg ;

var
opc :integer;
i: integer;
resp : char;
Archivo : Archi ;
Rl_a : Reg;

Procedure Carga_Alumnos ;
Begin
clrscr;
 Assign(archivo,'c:\Users\Mellis\Z\DatosAlumnos.dat');
 Rewrite(Archivo);
resp:= 's' ;
While (Resp <>'n') do
  begin
        Writeln('Ingrese Nombre de alumno ');
        Readln(Rl_a.Nom_Alu);
        Writeln('Ingrese codigo de materia');
        Readln(Rl_a.Codi_a);
        Writeln('Ingrese notas por favor') ;
             For i := 1 to 5 do
             Readln(Rl_a.Notas[i]);
        write(archivo,rl_a);  {Esto aumenta el puntero cada vez que se lo use}
         Repeat
               Writeln('Desea agregar otro alumno (s), (n) para finalizar');
               Readln(Resp);
         until (resp='s') or (resp='n');
   writeln('Pulse tecla para continuar');
   readkey;
   end;
  close(archivo);
end;


Procedure Muestro_Archivo;
begin
clrscr;
textcolor(11);
Assign(archivo,'c:\Users\Mellis\Z\DatosAlumnos.dat');
reset(Archivo);
While Not (eof(archivo)) do
    begin
        Read(Archivo,rl_a);
        Write('Alumno = '); write('     ');writeln(rl_a.Nom_Alu);
        write('Codigo de Carrera    =  '); Writeln(Rl_a.Codi_A);

         For i:= 1 to 5 do
         begin
         write('Nota Parcial Numero  ', i , '=    ');  Writeln(rl_a.Notas[i]);
         end;
      Writeln;
     end;
    Writeln('Pulse una tecla para vovler al menu');
    readkey;
 close(archivo);
end;

Procedure Modi_Archi ;
begin
clrscr;
assign(archivo,'c:\Users\Mellis\Z\DatosAlumnos.dat');
reset(archivo);
resp:= 's' ;
While (Resp <>'n') do
  begin
        read(archivo,rl_a);
        seek(archivo,filesize(archivo));
        Writeln('Ingrese Nombre de alumno ');
        Readln(Rl_a.Nom_Alu);
        Writeln('Ingrese codigo de materia');
        Readln(Rl_a.Codi_a);
        Writeln('Ingrese notas por favor') ;
             For i := 1 to 5 do
             Readln(Rl_a.Notas[i]);
        write(archivo,rl_a);
         Repeat
               Writeln('Desea agregar otro alumno (s), (n) para finalizar');
               Readln(Resp);
         until (resp='s') or (resp='n');
   end;
close(archivo);

end;
Procedure menu;
begin
 clrscr;
 textcolor(11);
 writeln('Ingrese 0 para finalizar') ;
 Writeln('Ingrese 1 Para crear arichivo');
 Writeln('Ingrese 2 para ver el archivo');
 writeln('Ingrese 3 para colocar mas registros');
 readln(opc) ;
while opc <> 0  do
    begin
       case opc of
            1:   Carga_Alumnos;
            2:   Muestro_Archivo;
            3:   Modi_Archi;
           end;
      menu;
    end;
end;



begin

clrscr;
Menu;
clrscr;
textcolor(10);
Writeln('Pulse una tecla para finalizar');
delay(800);
writeln('PUTO EL QUE LEE ') ;
readkey
end.
