PROGRAM ejer19;
USES crt;
VAR
boletos,codigo:array[1..25] of integer;
i,cod,c,cantbol:integer;

PROCEDURE inicializado;
BEGIN
 FOR i:=1 TO 25 DO
  boletos[i]:=0;
  codigo[i]:=0;
 END;

PROCEDURE cargadatos;
 BEGIN
  REPEAT
    writeln('Ingrese el codigo');
    readln(cod);
  UNTIL (cod>=1) AND (cod<=999);
 WHILE cod<>0 DO
   BEGIN

    writeln('Ingrese cantidad de boletos');
    readln(cantbol);
    c:=0;
    REPEAT
    c:=c+1
    UNTIL (codigo[c]=cod) OR (codigo[c]=0);
  IF codigo[c]=0 THEN
  begin
    codigo[c]:=cod;
    boletos[c]:=boletos[c]+cantbol;end;    REPEAT

    writeln('Ingrese codigos');
    readln(cod);
    UNTIL (cod>=0) AND (cod<=999)
  END;
 END;

PROCEDURE mostrar;
BEGIN
FOR i:=1 to 25 do
writeln(codigo[i],'  ',boletos[i])
END;

BEGIN
inicializado;
cargadatos;
mostrar;
readkey;
END.
