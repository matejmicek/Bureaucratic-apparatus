program buro;
{$R+}

uses
  Classes, SysUtils;

var
 count, current, original, counter, result, base: longint;
 i, j, k: longint;
 pravidla: Text;
 Txt: string;
 row: TStringList;
 rules: array of longint;
 cycles: array of longint;

 function gcd(m,n:longint):longint;
 begin
   if n = 0  then
    gcd:=m
   else
    gcd:=gcd(n, m mod n);
 end;

 function lcm(m,n:longint):longint;
 begin
 lcm:=(m*n) div gcd(m,n);
 end;


begin

 {counting the number of uredniks}
 Assign(pravidla,'pravidla.in');
 reset(pravidla);
 readln(pravidla, Txt);
 count := StrToInt(Txt);

 if ((count = 1) OR (count = 0))
 then
    result := 1
 else
 begin

 {vectorizing pravidla}
 SetLength(rules, count + 1);
 for i:=1 to count do
 begin
 readln(pravidla, Txt);
 row := TStringList.Create;
 row.CommaText := Txt;
 rules[StrToInt(row[0])] := StrToInt(row[1]);
 end;

 {counting cycles}
 SetLength(cycles, count + 1);
 for j:=1 to count do
 begin
 original := j;
 current := j;
 counter := 0;
      while ((not(current = original)) or (counter = 0)) do
      begin
      current := rules[current];
      counter := counter + 1;
      end;
 cycles[j] := counter;
 end;

 {counting multiple}
 base := cycles[1];
 for k :=2 to count do
 begin
 base := lcm(base, cycles[k]);
 end;
 result := base;

 {sum}

 end;
 
 Close(pravidla);
 writeln(result);

end.
