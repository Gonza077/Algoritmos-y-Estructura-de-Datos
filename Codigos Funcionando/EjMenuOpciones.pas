Program eje1;
uses crt;
var
codig:integer;
impo,suc1,suc2,suc3,suc4,suc5:real;
Procedure accion;
begin
case codig of

              1: begin Suc1:=(suc1+Impo)end;
              2: begin Suc2:=(suc2+impo)end;
              3: begin Suc3:=(suc3+impo)end;
              4: begin Suc4:=(suc4+impo)end;
              5: begin Suc5:=(suc5+impo)end;
 end;
 end;
 begin
 repeat
 writeln('hola bienvenido al programa');
 writeln('porfavor a continuacion coloque los mporte y elije a que sucursal se destina');
 readkey;
 clrscr;
 writeln('');
 writeln('menu de opciones');
 writeln('0 para finalizar');
 writeln('1 suc1');
 writeln('2 suc2');
 writeln('3 suc4');
 writeln('4 suc4');
 writeln('5 suc5');
 readln(codig);

 while(codig<0)or(codig>5) do
 repeat
       writeln('el numero no es una sucursal, ingrese denuevo');
       readln(codig);
     until(codig>=0) or (codig<=5);
     accion;
     until(codig=0);
writeln('importe de la sucursal 1 son ',suc1:1:2);
writeln('importe de la sucursal 2 son ',suc2:1:2);
writeln('importe de la sucursal 3 son ',suc3:1:2);
writeln('importe de la sucursal 4 son ',suc4:1:2);
writeln('importe de la sucursal 5 son ',suc5:1:2);
readkey
end.
