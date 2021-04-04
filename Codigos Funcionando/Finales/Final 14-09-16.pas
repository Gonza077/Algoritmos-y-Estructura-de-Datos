Program Final140916;
uses crt;
Type
Registro = Record
            NroCuenta,Clave : integer;
            Saldo,CBU : Real;
            Nombre : String[20];
            Control : Boolean;
            end;
Archivo = file of Registro;
Var
arch : archivo;
reg : Registro;
num : integer;
cbu : real;

Procedure Ordeno_Archivo;
var
i,j : integer;
aux1 : registro;
begin
  For i:=0 to filesize(arch)-2 do
        for j :=i+1 to filesize(arch)-1 do
             begin
                   seek(arch,i);
                   read(arch,reg);
                   seek(arch,j);
                   read(arch,aux1);
                        if   (reg.NroCuenta < aux1.NroCuenta) then
                                  begin
                                             seek(arch,i);
                                             write(arch,aux1);
                                             seek(arch,j);
                                             write(arch,reg);

                                   end;

             end;

end;

Procedure Cargo_Archivo;
var
opc:char ;
begin
opc:='S';
while (opc<>'N') do
  begin
   writeln('Ingrese numero de Cuenta'); readln(reg.NroCuenta);
   writeln('Ingrese Nombre'); readln(reg.Nombre);
   writeln('Ingrese Clave');readln(reg.Clave);
   writeln('Ingrese CBU'); readln(Reg.Cbu);
   writeln('Ingrese Deposito inicial');readln(reg.Saldo);
   reg.Control:=False;
   write(arch,reg);
   writeln('Quiere seguir agregando Personas? S/N');
     repeat
        readln(opc);
        opc:=Upcase(opc);
     until (opc='S') or (opc='N');
    end;
  Ordeno_Archivo;
end;


Procedure Abro_Archivo;
var
opc1 : char;
begin
Assign(arch,'c:\Cliente.Dat');
writeln('Desea crear o abrir el archivo? C/A ');
  repeat
        readln(opc1);
        opc1:=Upcase(opc1);
  until (opc1='C') or (opc1='A');
    if (opc1='C') then
                  begin
                   Rewrite(arch);
                   writeln('El archivo se ah Creado');
                   Cargo_Archivo;
                  end
               else
                 begin
                  Reset(arch);
                  writeln('Se ah Abierto el archivo');
                 end;
end;

Function Busca_Cuenta(a :integer):Boolean;
var
band : Boolean;
begin
seek(arch,0);
band:=False;
while not (eof(arch)) and (band=False) do
   begin
    read(arch,reg);
             band:=((A=reg.nroCuenta) and (Reg.Control=False));
   end;
             Busca_Cuenta:=Band;
end;

Function Verifico( b : integer):Boolean;
begin
            verifico:=(B=Reg.Clave);
            if  (verifico=False) then
                    begin
                    writeln('Ingrese clave nuevamente');
                    readln(b);
                    verifico:=(reg.Clave=b)
                    end;
                       if (verifico=False) then
                              begin
                              seek(arch,filepos(arch)-1);
                              reg.Control:=True;
                              write(arch,reg);
                              end;
end;

Function Veri_Saldo(c,d : real):boolean;
begin
Veri_Saldo:=(C<=D);
end;


Procedure Letrero;
begin
Writeln('     BIENVENIDO        ');
Writeln('Ingrese Numero de cuenta: ............(0 Fin de proceso)');
end;

Procedure Extraccion;
var
monto : real;
begin
   writeln('Ingrese monto a extraer'); readln(Monto);
           if (Veri_Saldo(Monto,reg.Saldo)=True) then
                                     begin
                                       seek(arch,filepos(arch)-1);
                                       reg.saldo:=reg.saldo-monto;
                                       write(arch,reg);
                                       writeln('Operacion realizada con exito');
                                       delay(500);
                                       writeln;
                                       writeln('Monto disponible a extraer ',reg.Saldo:0:0) ;
                                     end
                                    else
                                    writeln('Saldo insuficiente');
end;

Procedure Deposito;
var
monto2 : real;
begin
  writeln('Ingrese monto a depositar'); readln(monto2);
  seek(arch,filepos(arch)-1);
  reg.Saldo:=reg.Saldo+monto2;
  write(arch,reg);
  writeln('Deposito Exitoso');
  writeln;
end;

Procedure Transferencia;
var
aux,aux2 : Registro;
monto3: real;
begin
aux:=reg;
 writeln('Ingrese numero a buscar '); readln(num);
 writeln('Ingrese CBU'); readln(CBU);
 writeln('Ingrese Monto a transferir');readln(monto3);
  if ((busca_cuenta(num)) and (reg.cbu=CBU))=true then
                  begin
                  aux2:=reg;
                  if veri_saldo(monto3,aux.Saldo)=True then
                       begin
                             if busca_cuenta(aux.NroCuenta)=True then
                                                            begin
                                                             seek(arch,filepos(arch)-1);
                                                             aux.saldo:=aux.Saldo-monto3;
                                                             write(arch,aux);
                                                            end;
                            if busca_cuenta(aux2.NroCuenta)=true then
                                                             begin
                                                               seek(arch,filepos(arch)-1);
                                                               aux2.saldo:=aux2.saldo+monto3;
                                                               write(arch,aux2);
                                                             end;
                         writeln;
                         while not(eof(arch)) do
                               begin
                                    read(arch,reg);
                                    writeln('Numero de Cuenta ',reg.NroCuenta);
                                    writeln('Nombre ',Reg.Nombre);
                                    writeln('Clave ',reg.Clave);
                                    writeln('CBU ',Reg.CBU:0:2);
                                    writeln(' Deposito inicial ',reg.Saldo:0:0);
                                    writeln;
                          end;

                       end;
                  end;
end;

Procedure Menu_Cliente;
var
opc : integer;
begin
  writeln('Bienvenido cliente ',Reg.Nombre,' Que operacion desea hacer?');
  writeln('1. Extraccion  2.Deposito  3.Transferencia   0.Fin de Transacciones      ');
  repeat
    readln(opc);
        if (opc<0) and (opc>3) then
                writeln('Numero ingresado incorrecto, vuelva a ingresar');
   until (opc>=0) and (opc<=3);
   while (opc<>0) do
     begin
      case opc of
              1 : Extraccion;
              2 : Deposito;
              3 : Transferencia;
             end;
       writeln('1. Extraccion  2.Deposito  3.Transferencia   0.Fin de Transacciones     ');
        repeat

         readln(opc);
          if (opc<0) and (opc>3) then
                writeln('Numero ingresado incorrecto, vuelva a ingresar');
        until (opc>=0) and (opc<=3);
     end;
end;

Procedure Menu;
var
num,clave : integer;
begin
Letrero;
readln(Num);
while (num<>0) do
   begin
        if Busca_Cuenta(num)= True then
        begin
         writeln('Ingrese clave ', Reg.Nombre, ' Por favor ');
         readln(Clave);
         Verifico(Clave);
        end
        else
        writeln('No se encontro numero o cuenta Bloqueada');
               if Verifico(clave)=True    then
                                          Menu_Cliente
                                          else
                                           begin
                                            writeln('Cuenta bloqueada. Debe concurrir personalmente al Banco');
                                            readkey;
                                           end;

       Letrero;
       readln(num);
    end;
end;

procedure veo_Archivo;
begin
while not(eof(arch)) do
    begin
     read(arch,reg);
     writeln('Numero de Cuenta ',reg.NroCuenta);
     writeln('Nombre ',Reg.Nombre);
     writeln('Clave ',reg.Clave);
     writeln('CBU ',Reg.CBU:0:0);
     writeln(' Deposito inicial ',reg.Saldo:0:0);
     writeln;
    end;
end;
begin
Abro_Archivo;
veo_Archivo;
menu;
veo_archivo;
close(arch);
Writeln('Gracias por utilizar el programa');
readkey
end.














