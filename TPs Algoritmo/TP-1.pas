Program TP_Juego;
uses crt;
var
nombre_jug, palabra1, palabra2, vocales, pais, vocal, v_f : string[20];
puntaje, i, intentos, u_nic, u_aus, u_ind, u_din, int : integer;


Procedure pantalla_inicial;
Begin

writeln('Bienvenido a el juego');
writeln;
write('Por favor, ingrese su nombre: '); readln(nombre_jug);
writeln;
writeln('Muy bien ',nombre_jug,', vamos a empezar con el primer juego.');
writeln;
writeln('Para ganar, debera llegar a 100 puntos, superando 5 problemas.');
writeln;
writeln('Presione cualquier tecla para continuar');
readkey;
clrscr;

End;

Procedure juego_1;
Begin

writeln('(1) A esta transicion de palabras, le faltan 2 palabras en el medio,');
writeln('de forma tal que cambiando solo 1 letra en cada paso lograra la transformacion.');
writeln;
writeln('SOLAR');
writeln('*****');
writeln('*****');
writeln('LUNAR');
writeln;
writeln('Ingrese la respuesta en MAYUSCULAS');
writeln;
write('Ingrese la primer palabra: '); readln(palabra1);
write('Ingrese la segunda palabra: '); readln(palabra2);
writeln;


if (palabra1='SALAR') and (palabra2='LANAR') then
puntaje:=20;
if (palabra1<>'SALAR') and (palabra2<>'LANAR') then
puntaje:=10;
if (palabra1<>'SALAR') and (palabra2<>'LANAR') then
puntaje:=0;

writeln('Puntaje obtenido: ',puntaje,' / 100');
writeln;
writeln('Presione cualquier tecla para continuar con el siguiente problema');
readkey;
clrscr;

End;

Procedure juego_2;
Begin

writeln('(2) La frase del primer cartel es verdadera, con que numero escrito');
writeln('en palabras completaria la segunda frase?');
writeln;
writeln('EN ESTE CARTEL HAY SEIS PALABRAS');
writeln;
writeln('EN ESTE CARTEL HAY ________ VOCALES');
writeln;
writeln('Ingrese la respuesta en MAYUSCULAS');
writeln;

writeln('Usted tiene tres intentos');
intentos:=3;
writeln;
readln(vocales);

while (vocales<>'ONCE') and (intentos<>0) do
begin

intentos:=(intentos-1);
writeln('Intentos restantes ',intentos,'/3');
readln(vocales);

end;

if intentos=3 then
puntaje:=(puntaje+20);
if intentos=2 then
puntaje:=(puntaje+10);
if intentos=1 then
puntaje:=(puntaje+5);

writeln;
writeln('Puntaje obtenido: ',puntaje,' / 100');
writeln;
writeln('Presione cualquier tecla para continuar con el siguiente problema');
readkey;
clrscr;

End;

Procedure juego_3;
Begin

writeln('(3) Ordenar los carteles para formar el nombre de 4 paises');
writeln;
writeln('ONE - TRA - ARA');
writeln;
writeln('RCA - NIC - SIA');
writeln;
writeln('GUA - LIA - DIN');
writeln;
writeln('AUS - AMA - IND');
writeln;

u_nic:=0;
u_aus:=0;
u_ind:=0;
u_din:=0;

for i:=1 to 4 do
begin
write('Ingrese el nombre de un pais: '); readln(pais);

if (pais='NICARAGUA') and (u_nic=0) then
begin
puntaje:=(puntaje+5);
u_nic:=1;
end;

if (pais='AUSTRALIA') and (u_aus=0) then
begin
puntaje:=(puntaje+5);
u_aus:=1;
end;

if (pais='DINAMARCA') and (u_din=0) then
begin
puntaje:=(puntaje+5);
u_din:=1;
end;

if (pais='INDONESIA') and (u_ind=0) then
begin
puntaje:=(puntaje+5);
u_ind:=1;
end;

end;

writeln;
writeln('Puntaje obtenido: ',puntaje,' / 100');
writeln;
writeln('Presione cualquier tecla para continuar con el siguiente problema');
readkey;
clrscr;

End;

PROCEDURE juego_4;
BEGIN
clrscr;
int:=3;
writeln('(4) Continua con la secuencia');
writeln;
writeln('U D T C C S -?');
writeln;
writeln('Ingrese la letra en MAYUSCULAS'); readln(vocal);
if vocal='S' then
puntaje:=puntaje+20

else

repeat
writeln('La vocal ingresada es incorrecta, ingresela nuevamente en MAYUSCULAS');
int:=(int-1);
writeln('Intentos restantes ',int,'/3');
readln(vocal);
until (int=0) or (vocal='S');
if int=2 then
puntaje:=puntaje+10;
if int=1 then
puntaje:=puntaje+5;
writeln;
writeln('Puntaje obtenido: ',puntaje,' / 100');
writeln;
writeln('Presione cualquier tecla para realizar el ultimo problema.');
readkey;
clrscr;
End;

PROCEDURE juego_5;
BEGIN

writeln('(5) Preguntas para responder, por Verdadero (V) o Falso (F)');
writeln('La respuesta tiene que ser una letra MAYUSCULA');
writeln;
write('a. El indice de un For puede ser REAL: '); readln(v_f);
if (v_f='F') then

puntaje:=puntaje+4
else
begin
writeln;
writeln('Respuesta incorrecta');
writeln;
end;


writeln('b. La estructura de control While - DO, entra en LOOP cuando no defino');
write('nuevamente la variable de control: '); readln(v_f);
if (v_f='V') then

puntaje:=puntaje+4
else
begin
writeln;
writeln('Respuesta incorrecta');
writeln;
end;

write('c. El selector multiple CASE, trabaja por desigualdad: '); readln(v_f);
if (v_f='F') then

puntaje:=puntaje+4
else
begin
writeln;
writeln('Respuesta incorrecta');
writeln;
end;

write('d. La funcion standard CHR es igual a la funcion standard ORD: '); readln(v_f);
if (v_f='F') then
puntaje:=puntaje+4
else
begin
writeln;
writeln('Respuesta incorrecta');
writeln;
end;


write('e. Es lo mismo utilizar DIV que /?: '); readln(v_f);
if (v_f='F') then

puntaje:=puntaje+4
else
begin
writeln;
writeln('Respuesta incorrecta');
writeln;
end;

delay(1200);
clrscr;

End;

Procedure final;
Begin

writeln;
if puntaje=100 then
begin
writeln(nombre_jug,'es el ganador, felicidades!!');
writeln;
writeln('Puntaje obtenido: ',puntaje,' / 100');
end

else

if puntaje<100 then
begin
writeln('No has podido lograr el puntaje deseado');
writeln;
writeln('Estuviste a ',(100-puntaje),' puntos de ganar');
writeln;
writeln('Buena suerte la proxima!');
writeln;
end;

delay(800);
writeln('Presione cualquier tecla para salir');
readkey;
delay(2222);

end;

BEGIN

puntaje:=0;

pantalla_inicial;

juego_1;

juego_2;

juego_3;

juego_4;

juego_5;

final;

END.
