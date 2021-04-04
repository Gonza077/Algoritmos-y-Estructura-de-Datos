Program TP2CodigoDeBarras;
Uses crt;
Var
Legajo,a,b,c, a_1,b_1,c_1,d,d_1: integer;
numeros : array [0..9] of string[4];
begin
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
    repeat
        write('Ingrese legajo de cuatro cifras: '); readln(legajo);
    until (legajo>0) and (legajo<=9999);
d:=(legajo DIV 1000);
d_1:=((legajo DIV 100)-d*10);
a:=(legajo div 100);
a_1:=(a*10);
b:=((legajo div 10)-a_1);
b_1:=((legajo div 10)*10);
c:=(legajo - b_1);

write( d); write( d_1 ); write( b ) ;  write( c );
writeln;
write(numeros[d]); write(numeros[d_1]) ; write(numeros[b]) ; write(numeros[c]);
writeln;


readkey;

end.
