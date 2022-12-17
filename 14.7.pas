begin
var f: file of char;
var c:='!';
var n:=1;
    assign (f, 'c:\e.txt');
    reset (f);
  while (not eof(f)) do
   begin
   if n mod 2<>0 then begin
   seek(f,n);
   write(f,c);
   end;
   n:=n+1;
   end;
    close(f);
 end.