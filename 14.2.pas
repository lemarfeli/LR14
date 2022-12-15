Var f1,f2:text;
    s,max,s1:string;
    i:byte;
Begin
    assign(f1,'input.txt');reset(f1);
    max:='';
    while not eof(f1) do
    begin
      readln(f1,s);
      if length(s)>length(max) then max:=s;
    end;
    close(f1);reset(f1);
    assign(f2,'output.txt');
    rewrite(f2);
    while not eof(f1) do
    begin
      readln(f1,s);
      if length(s)=length(max) then
      begin
        s1:='';
        for i:=1 to length(s) do
         s1:=s[i]+s1;
        writeln(f2,s1);
      end;
    end;
    close(f1);close(f2);
    readln;
End.