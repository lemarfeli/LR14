begin
var f:file of real;
var a, s:real;
var i:=0;
assign(f,'c:\a.txt');
rewrite(f);
writeln('Введите в файл вещественные числа');
repeat
readln(a);
write(f,a);
until a=0;
reset(f);
while not eof(f) do
 begin
  read(f,a);
  i:=i+1;
  if i mod 2=0 then s:=s+a;
 end;
close(f);
write('Сумма элементов с четными номерами=',s:0:2);
end.