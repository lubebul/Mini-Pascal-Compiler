program test(in, out, err);
var cache : array [1..100] of integer;

procedure initCache;
var i : integer;
begin
   i := 1;
   while(i <= 100) do
   begin
      cache[i] := -1;
      i := i+1
   end;
   cache[1] := 1;
   cache[2] := 1;
end;

function fib(x : integer) : integer;
var p, pp : integer;
begin
   if(cache[x] != -1) then
   begin
      fib := cache[x]
   end
   else
   begin
      p := fib(x-1);
      pp := fib(x-2);
      cache[x] := p+pp;
      fib := p+pp
   end
end;

begin
   initCache;
   printInt(fib(10))
end.

