Program Trabajo_Practico_2;
uses crt;
var
eleccion,eleccion_2:integer;
{Del tateti}
tab : array [1..3,1..3] of string[1] ;
n,m,o,p,winner,cont :integer;
nom_1, nom_2 : string[20];
{De los codigos...}
Legajo,a,b,c, a_1,b_1,c_1,d,d_1: integer;
numeros : array [0..9] of string[4];

i,j,k,l,g : integer;
z,bn,num,q,w,e,r,legajo2 : string[4];
qr : array [1..21,1..21] of char;
l1,l2,l3,l4,x1,y1,x2,y2,x3,y3,x4,y4 : integer;
l_1,l_2,l_3,l_4,a1,b1,c1,d1 : string[1];



{********************BARRA*******SEPARADORA*************************}

Procedure global_config;
Begin
winner:=0;
cont:=0;

for i:=1 to 3 do
begin
for j:=1 to 3 do
tab[i,j]:=' ';
end;
End;

{********************BARRA*******SEPARADORA*************************}

procedure tateti;

begin

writeln(' ',tab[1,1],' | ',tab[1,2],' | ',tab[1,3],' ');
writeln('---|---|---');
writeln(' ',tab[2,1],' | ',tab[2,2],' | ',tab[2,3],' ');
writeln('---|---|---');
writeln(' ',tab[3,1],' | ',tab[3,2],' | ',tab[3,3],' ');

end;

{********************BARRA*******SEPARADORA*************************}

Procedure game_start;
Begin

clrscr;
Writeln('Bienvenido al juego de TATETI');
writeln;
write('Por favor, ingrese el nombre del jugador 1: '); readln(nom_1);
writeln;
write('Ahora ingrese el nombre del segundo jugador: '); readln(nom_2);
writeln;
writeln('EMPECEMOS!!');
delay(750);
clrscr;

End;

{********************BARRA*******SEPARADORA*************************}

procedure ganador;
begin

for i:=1 to 3 do
begin

if (tab[i,1]='X') and (tab[i,2]='X') and (tab[i,3]='X') OR
(tab[1,i]='X') and (tab[2,i]='X') and (tab[3,i]='X') OR
(tab[1,1]='X') and (tab[2,2]='X') and (tab[3,3]='X') OR
(tab[1,3]='X') and (tab[2,2]='X') and (tab[3,1]='X') then

winner:=1;

if (tab[i,1]='O') and (tab[i,2]='O') and (tab[i,3]='O') OR
(tab[1,i]='O') and (tab[2,i]='O') and (tab[3,i]='O') OR
(tab[1,1]='O') and (tab[2,2]='O') and (tab[3,3]='O') OR
(tab[1,3]='O') and (tab[2,2]='O') and (tab[3,1]='O') then

winner:=2;

 end;
end;

{********************BARRA*******SEPARADORA*************************}

Procedure final;
Begin
if (winner=1) or (winner=2)  then textcolor(10)
else textcolor(3);

tateti; writeln;

if winner=1 then
writeln('El ganador es ',nom_1,', felicitaciones!!');
if winner=2 then
writeln('El ganador es ',nom_2,', felicitaciones!!');
if cont=9 then
begin
textcolor(14);
writeln('Howston, tenemos un empate...');
end;
writeln;
writeln('Presione cualquier tecla para salir.');
End;

{********************BARRA*******SEPARADORA*************************}

Procedure juego;
Begin
repeat

tateti;

repeat

writeln('Jugador ',  nom_1 ,' ingrese Fila: ');
   repeat
   read(n);
   until (n>0) and (n<4);
writeln;
writeln('Jugador ' ,nom_1, ' ingrese Columna: ');
   repeat
   read(m);
   until (m>0) and (m<4);
writeln;

until (tab[n,m]<>'X') and (tab[n,m]<>'O') and (cont<>9);

tab[n,m]:='X';
cont:=cont+1;

ganador;

clrscr;

tateti;

if (winner=0) and (cont<>9) then
begin

repeat

writeln('Jugador ', nom_2 , ' ingrese Fila: ');
   repeat
   readln(n);
   until (n>0) and (n<4);
writeln;
writeln('Jugador ' , nom_2 , ' ingrese Columna:  ');
   repeat
   readln(m);
   until (m>0) and (m<4);
writeln;

until (tab[n,m]<>'X') and (tab[n,m]<>'O') and (cont<>9);

tab[n,m]:='O';
cont:=cont+1;

ganador;

end;

clrscr;
until (winner=1) or (winner=2) or (cont=9);
end;

{********************BARRA*******SEPARADORA*************************}

Procedure ini_tateti;
Begin

global_config;

game_start;

juego;

final;

readkey;

textcolor(7);

End;

{*********************************************************************************}

{CODIGOS DE BARRA Y QR}
Procedure qr_code;
Begin

gotoxy(x1,y1);
writeln('**');
gotoxy(x2,y2);
writeln('II');
gotoxy(x3,y3);
writeln(b1,a1);
gotoxy(x4,y4);
writeln(d1,c1);

End;

Procedure coord_D1;
{Esta es la ubicacion donde va el D1}
Begin
x1:=20; y1:=18;
x2:=20; y2:=19;
x3:=20; y3:=20;
x4:=20; y4:=21;
End;

Procedure coord_D2;
Begin
x1:=20; y1:=14;
x2:=20; y2:=15;
x3:=20; y3:=16;
x4:=20; y4:=17;
End;

Procedure coord_D3;
Begin
x1:=20; y1:=10;
x2:=20; y2:=11;
x3:=20; y3:=12;
x4:=20; y4:=13;
End;

Procedure coord_D4;
Begin
x1:=18; y1:=10;
x2:=18; y2:=11;
x3:=18; y3:=12;
x4:=18; y4:=13;
End;

Procedure separa_n;
Begin

str(legajo,legajo2);

l_1:= copy(legajo2,1,1);
l_2:= copy(legajo2,2,1);
l_3:= copy(legajo2,3,1);
l_4:= copy(legajo2,4,1);

{Transforma a integer}
val(l_1,l1);
val(l_2,l2);
val(l_3,l3);
val(l_4,l4);

End;

Procedure display_qr;
Begin

a1:= copy((numeros[l1]),1,4);
b1:= copy((numeros[l1]),2,4);
c1:= copy((numeros[l1]),3,4);
d1:= copy((numeros[l1]),4,4);

coord_D1;

qr_code;

a1:= copy((numeros[l2]),1,4);
b1:= copy((numeros[l2]),2,4);
c1:= copy((numeros[l2]),3,4);
d1:= copy((numeros[l2]),4,4);

coord_D2;

qr_code;

a1:= copy((numeros[l3]),1,4);
b1:= copy((numeros[l3]),2,4);
c1:= copy((numeros[l3]),3,4);
d1:= copy((numeros[l3]),4,4);

coord_D3;

qr_code;

a1:= copy((numeros[l4]),1,4);
b1:= copy((numeros[l4]),2,4);
c1:= copy((numeros[l4]),3,4);
d1:= copy((numeros[l4]),4,4);

coord_D4;

qr_code;

End;


procedure iniciar_cod_qr;
Begin
     for i:=1 to 21 do
         begin
         for j:=1 to 21 do
             begin
             qr[i,j]:='´';
             end;
         end;
End;

Procedure graficar;
Begin

for i:=1 to 21 do
begin
for j:=1 to 21 do
begin
gotoxy(i,j);
writeln (qr[i,j]);
end;
end;

end;

Procedure iniciar_qr;
Begin

iniciar_cod_qr;

graficar;

separa_n;

display_qr;

gotoxy(1,24);

writeln('Legajo ingresado: ',legajo);

readkey;

End;

Procedure ini_codigos;
Begin

     numeros[0]:= ('****');
     numeros[1]:= ('***|');
     numeros[2]:= ('**|*');
     numeros[3]:= ('**||');
     numeros[4]:= ('*|**');
     numeros[5]:= ('*|*|');
     numeros[6]:= ('*||*');
     numeros[7]:= ('*|||');
     numeros[8]:= ('|***');
     numeros[9]:= ('|**|');


write('Ingrese legajo de cuatro cifras: ');

repeat

readln(legajo);

if (legajo<0) or (legajo>10000) then
writeln('El numero ingresado es incorrecto, ingreselo nuevamente');

until (legajo>0) and (legajo<10000);



d:=(legajo DIV 1000);
d_1:=((legajo DIV 100)-d*10);
a:=(legajo div 100);
a_1:=(a*10);
b:=((legajo div 10)-a_1);
b_1:=((legajo div 10)*10);
c:=(legajo - b_1);

writeln;
writeln('CODIGO DE BARRAS');
writeln;
writeln(numeros[d],numeros[d_1],numeros[b],numeros[c]);
writeln;
writeln('Presione cualquier tecla para visualizar el codigo QR');

readkey;

{ACA VIENE EL QR!!!}

clrscr;

iniciar_qr; {<-- ESTO ES LO QUE INICIA EL QR, PERO NO ENTIENDO, SI ESTÁ VACIO...}

END;


procedure menu_opciones;
Begin

writeln('Bienvenido al segundo trabajo practico...');
writeln;
writeln('Que desea hacer?');
writeln;
writeln('[1] Iniciar juego TATETI');
writeln;
writeln('[2] Iniciar ingreso de legajo con codigo de barras y QR');
writeln;
writeln('[3] SALIR del programa');
writeln;
repeat
writeln('Ingrese su opcion: '); readln(eleccion);
until (eleccion>0) and (eleccion<4);

case eleccion of
1: begin ini_tateti end;
2: begin ini_codigos end;
3: begin halt(0)  end;
end;

End;


BEGIN

repeat

menu_opciones;

clrscr;

{aca mandarle un repeat que pregunte si quiere empezar de nuevo o salir, es facil}

writeln('Desea salir o volver al menu?');
writeln;
writeln('[1] VOLVER AL MENU');
writeln;
writeln('[2] SALIR');
writeln;
repeat
writeln('Ingrese su opcion: '); readln(eleccion_2);
until (eleccion_2>0) and (eleccion_2<3);
case eleccion_2 of
     1: Begin menu_opciones End;
     2: Begin writeln('Saliendo del programa...') End;
end;

until (eleccion_2=2);

delay(1000);
end.
