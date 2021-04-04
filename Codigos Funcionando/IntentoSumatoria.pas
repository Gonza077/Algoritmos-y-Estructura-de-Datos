Program IntentoFunciones;
Uses crt;
Var
n,i :integer;
x,suma : real;
function POTEN(Base :real; Exp:integer):real;
Var
P:REAL;
E:INTEGER;
 BEGIN
 P:=1;
 for e :=1 to exp do
   p:=P* BASE;
  Poten:=P;
 end;

begin
writeln('Ingrese extremo sumantoria y numero');
 readln(n,x);
 suma:=0;
 for i:=0 to N do
  suma:=suma+ Poten(x,i);
  writeln('La sumatoria de los terminos de base son : ',x:3:2)  ;
  writeln('Desde potencia 0 a potencia ',n , 'es igual a ' , suma:10:2);

readkey
end.

