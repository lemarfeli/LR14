var a, b: file of real;
    c, i, maxi, mini: integer;
    m, s, max, min: real;
var mas: array of real;
begin
  randomize;
  assign(a, 'max');
  rewrite(a);
  write('Введите количество чисел исходного файла: ');
  readln(c);
  setlength (mas, c);
  for i:= 1 to c do
    begin
      m:= 10*random;
      write(a, m);
      mas[i-1]:= trunc(m * 100 + 0.5)/100; 
    end;
  println(mas);
  min:= mas[0];
  mini:= 1;
  for i:= 1 to c-1 do 
    begin
      if mas[i] < min then 
        begin
          min:= mas[i];
          mini:= i+1;
        end;
    end;
  max:= mas[0];
  maxi:= 1;
  for i:= 1 to c-1 do
  if mas[i] > max then 
    begin
      max:= mas[i];
      maxi:= i+1;
    end;
  assign(b, 'max1');
  rewrite(b);
  for i:= 1 to c do
    begin
      if (i = maxi) then
        write(b, mas[mini-1])
      else 
        begin
          if (i = mini) then
            write(b, mas[maxi-1])
          else 
            write(b, mas[i-1]);
        end;
    end;
  reset(b);
  writeln('Содержание файла чисел b: ');
  while not eof(b) do
    begin
      read(b, m);
      write(m:0:2,' ');
    end;
close(b);
close(a);
end.