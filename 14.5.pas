var
 S:String;
 F_in: File of Real;
 El4,El3,El2,El1,El:Real;
 i:integer;
 a:real;
 
begin
  Assign(F_in,'c:\text.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 5 do begin
      read(a);
      write(F_in,a);
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,El);
  Read(F_in,El1);
  Read(F_in,El2);
  Read(F_in,El3);
  Read(F_in,El4);
  writeln('Результат =');
  if (El3>El4)and(El3>El2) then Writeln('s ',El3:0:2)
  else
   begin
    while (not eof(F_in)) and not((El4<El3) and (El3>El2)) do
     begin
      El4:=El3;
      El3:=El2;
      Read(F_in,El2);
     end;
    if (El4<El3) and (El3>El2) then
       Writeln(El3:0:2)
    else if eof(F_in) and (El3<El4) then
       Writeln(El4:0:2);
   end;
  Close(F_in);
end.