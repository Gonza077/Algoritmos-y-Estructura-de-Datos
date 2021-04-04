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

Archivo  : Archi ;
Rl_a  : Reg;
i, opc : integer;
resp  : char;


Procedure Carga_Alumnos ;
Begin
clrscr;
 Assign(archivo,'c:\Users\Mellis\Z\DatosAlumnos.dat');
 Rewrite(Archivo);
resp:= 'S' ;
While (Resp <>'N') do
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
               resp:=upcase(resp);
         until (resp='S') or (resp='N');
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
resp:= 'S' ;
While (Resp <>'N') do
  begin
        seek(archivo,filesize(archivo));
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
               resp:=upcase(resp);
         until (resp='S') or (resp='N');
   end;
close(archivo);

end;
Procedure menu;
begin
 clrscr;
 textcolor(11);
 writeln('Ingrese 0 para finalizar') ;
 Writeln('Ingrese 1 Para crear arichivo');
 Writeln('Ingrese 2 para colocar mas registros');
 writeln('Ingrese 3 para ver el archivo');
 readln(opc) ;
while opc <> 0  do
    begin
       case opc of
            1:   Carga_Alumnos;
            2:   Modi_Archi;
            3:   Muestro_Archivo;
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
