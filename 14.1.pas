var a: file of char;
    b: char;
    i, m: integer;
begin
  assign(a, 'o.txt');
  rewrite(a);
  write('Сколько символов записать в файл m = ');
  read(m);
  writeln('Введите в файл ', m, ' символов, в том числе пробел:');
  for i:=1 to m do
    begin
      read(b);
      write(a, b);
    end;
  reset(a);
  m:= -1;
  for i:= 0 to filesize(a)-1 do
    begin
      read(a, b);
      if b=' ' then 
        m:= i;
    end;
  if m= -1 then
    begin
      writeln('Не введен пробел');
      close(a);
    end
  else
    begin
      seek(a, m);
      truncate(a);
      seek(a, 0);
      close(a);
    end;
end.