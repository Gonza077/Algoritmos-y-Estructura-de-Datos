Program archivo;
uses crt;

type

{Localidades}

localidades = record
                          codi_loc : string[3];
                          nom_loc : string[30];
                          cant_pas : integer;
                          baja_loc : string[1];
               end;

loc = file of localidades;

{Transporte}

transporte = record
                          codi_tran : string[3];
                          detalle : string[25];
                          cant_filas : integer;
                          baja_tran : string[1];
               end;

tran = file of transporte;

{Pasajeros}

pasajeros = record
                          dni : string[8];
                          nom_ape : string[30];
               end;

pasa = file of pasajeros;

{Viajes}

fech = record            dia : 1..31;
                         mes : 1..12;
                         anyo : 2015..2020;
       end;

viajes = record
                          fecha : fech;
                          cod_trans : string[3];
                          origen : string[3];
                          destino : string[3];
                          precio : real;
                          libres : integer;
                          butacas : array [1..20,1..3] of integer;
               end;

via = file of viajes;

{datos = record
                          used1 : 0..1;
                          used2 : 0..1;
                          used3 : 0..1;
                          used4 : 0..1;
        end;
}
{fil_datos = file of datos;}

var

opcion, i, a, b : integer;

opc : char;

creado1,creado2,creado3,creado4 : boolean;

reg_loc : loc;
reg_tran : tran;
reg_pasa : pasa;
reg_via : via;

{reg_datos : fil_datos; }


rl : localidades;
rt : transporte;
rp : pasajeros;
rv : viajes;

{fd : datos;}

{Procedimientos}

{Procedure comienzo;
Begin

     assign(reg_datos,'C:\Users\Alesio\Desktop\archivostp\datos.dat');
     rewrite(reg_datos);

     (fd.used1):=0; (fd.used2):=0; (fd.used3):=0; (fd.used4):=0;
End;
}
Procedure menu_opciones;
Begin

     repeat
          writeln('(1) Para crear archivo de localidades');
          writeln('(2) Para crear archivo de transporte');
          writeln('(3) Para crear archivo de pasajeros');
          writeln('(4) Para crear archivo de viajes');
          writeln('(5) Para salir del programa');

          readln(opcion);
     until(opcion>=1) and (opcion<=5)

End;

Procedure crea_archivos;
Begin

opc := 's';

Case opcion of

1:
Begin

     if not (creado1=true) then
     Begin

          assign(reg_loc,'C:\Users\Mellis\Z\localidades.dat');{'C:\localidades.dat');}
          rewrite(reg_loc);
          creado1:=true;

     End
        else
            writeln('Archivo ya creado...');


End;

2:

Begin

     if not (creado2=true) then
     Begin

          assign(reg_tran,'C:\Users\Mellis\Z\transporte.dat');
          rewrite(reg_tran);
          creado2:=true;
     End
        else
            writeln('Archivo ya creado...');



End;

3:
Begin

     if not (creado3=true) then
     Begin

          assign(reg_pasa,'C:\Users\Mellis\Z\pasajeros.dat');
          rewrite(reg_pasa);
          creado3:=true;
     End
        else
            writeln('Archivo ya creado...');


End;

4:
Begin

     if not (creado4=true) then
     Begin

          assign(reg_via,'C:\Users\Mellis\Z\viajes.dat');
          rewrite(reg_via);
          creado4:=true;
     End
        else
            writeln('Archivo ya creado...');


End;

5:
Begin

        halt(0);

End;

End;

End;


Procedure ingresa_datos;
Begin

case opcion of

1:

Begin

while(opc='s') do

Begin

     writeln('Ingrese la localidad');

           readln(rl.codi_loc);

     writeln('Ingrese nombre de la localidad');

           readln(rl.nom_loc);

     writeln('Ingrese cantidad de pasajeros o 0 para cerrar');

           readln(rl.cant_pas);

         {writeln('La posicion del archivo es: ');
         writeln(filepos(reg_loc));}

         write(reg_loc,rl); {aumenta el filesize y el puntero}


                             writeln('Ingresar mas datos? Si(s) o No(n)?');
                                               repeat
                                                     readln(opc);
                                               until(opc='n') or (opc='s');

  end;

End;

2:
Begin

while(opc='s') do

Begin

     writeln('Ingrese codigo de transporte');

           readln(rt.codi_tran);

     writeln('Ingrese detalle');

           readln(rt.detalle);

     writeln('Ingrese cantidad de filas');

           readln(rt.cant_filas);


         write(reg_tran,rt); {aumenta el filesize y el puntero}


                             writeln('Ingresar mas datos? Si(s) o No(n)?');
                                               repeat
                                                     readln(opc);
                                               until(opc='n') or (opc='s');

  end;


End;


3:
Begin

while(opc='s') do

Begin

     writeln('Ingrese DNI de pasajero (8 Digitos)');

           readln(rp.dni);

     writeln('Ingrese nombre y apellido del pasajero');

           readln(rp.nom_ape);


         write(reg_pasa,rp); {aumenta el filesize y el puntero}


                             writeln('Ingresar mas datos? Si(s) o No(n)?');
                                               repeat
                                                     readln(opc);
                                               until(opc='n') or (opc='s');

  end;

End;


4:
Begin

while(opc='s') do

Begin

     writeln('Ingrese dia (fecha)');

           readln(rv.fecha.dia);

     writeln('Ingrese mes (fecha)');

           readln(rv.fecha.mes);

     writeln('Ingrese anyo (fecha)');

           readln(rv.fecha.anyo);

     writeln('Ingrese codigo de transporte');

           readln(rv.cod_trans);

     writeln('Ingrese origen');

           readln(rv.origen);

     writeln('Ingrese destino');

           readln(rv.destino);

     writeln('Ingrese el precio');

           readln(rv.precio);

     writeln('Ingrese cantidad de asientos libres');

           readln(rv.libres);

     writeln('Ingrese la pocision de la butaca [1..20][1..3]');
           write('1..20 '); readln(a);
           write('1..3 '); readln(b);
           (rv.butacas[a,b]):=100; {Cien por poner algo...}

         write(reg_via,rv); {aumenta el filesize y el puntero}


                             writeln('Ingresar mas datos? Si(s) o No(n)?');
                                               repeat
                                                     readln(opc);
                                               until(opc='n') or (opc='s');

  end;

End;





End;

End;

Procedure muestra_datos;
Begin

case opcion of

1:

Begin

seek(reg_loc,0);

while not eof(reg_loc) do

   begin

        read(reg_loc,rl);
        writeln(rl.codi_loc);
        writeln(rl.nom_loc);
        writeln(rl.cant_pas);

   end;

End;

2:

Begin

seek(reg_tran,0);

while not eof(reg_tran) do

   begin

        read(reg_tran,rt);
        writeln(rt.codi_tran);
        writeln(rt.detalle);
        writeln(rt.cant_filas);

   end;

End;


3:

Begin

seek(reg_pasa,0);

while not eof(reg_pasa) do

   begin

        read(reg_pasa,rp);
        writeln(rp.dni);
        writeln(rp.nom_ape);

   end;

End;

4:

Begin

seek(reg_via,0);

while not eof(reg_via) do

   begin

        read(reg_via,rv);
        writeln(rv.fecha.dia);
        writeln(rv.fecha.mes);
        writeln(rv.fecha.anyo);
        writeln(rv.cod_trans);
        writeln(rv.origen);
        writeln(rv.destino);
        writeln(rv.precio:0:3);
        writeln(rv.libres);
        writeln('Fila butaca: ',a,', columna butaca: ',b);
        {writeln(rv.butacas[a,b]);}

   end;

End;



End;

End;


BEGIN

opcion:=1;
creado1 := false;
creado2 := false;
creado3 := false;
creado4 := false;

{ comienzo; }

while (opcion=1) do
Begin

     menu_opciones;
     crea_archivos;
     ingresa_datos;
     muestra_datos;

     writeln('Volver a mostrar el menu de opciones Si(1), No(2)');
                     repeat
                           readln(opcion);
                     until(opcion=1) or (opcion=2);
End;




{ close(reg_loc); }
clrscr;
writeln('Saliendo...');
delay(800);

END.
