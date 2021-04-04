PROGRAM EJER3(input,output);
uses crt;
var
numero :integer;


Function Raiz(a:integer):real;
Begin
  Raiz:= SQRT(Numero);
end;

Begin

Writeln('Ingrese numero para calcular su raiz ');
readln(Numero);

Writeln('La raiz de  ' , '', Numero ,'' , ' es Igual a = ' ,Raiz(numero):0:2);
readkey
end.

