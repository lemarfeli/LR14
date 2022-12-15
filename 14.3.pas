var f, g, h:file of real;
var n,i:integer;
var a:real;
begin
randomize;
assign(f,'c:\f.txt');
rewrite(f);
write('количество чисел в файле ');
readln(n);
for i:=1 to n do
 begin
  a:=10*random;
  write(f,a);
 end;
close(f);
assign(f,'c:\f.txt');
reset(f);
assign(g,'c:\g.txt');
rewrite(g);
assign(h,'c:\h.txt');
rewrite(h);
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if odd(i) then write(g,a)
  else write(h,a)
 end;
close(f);
close(g);
close(h);
end.