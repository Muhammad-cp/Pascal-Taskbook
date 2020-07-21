//Дан массив размера N. 
//Переставить в обратном порядке элементы массива, расположенные между его минимальным и максимальным элементами
//включая минимальный и максимальный элементы.
Var a: array[1..10] of integer;
i,n,min,max,j,c:integer;
begin
  n := 10;
  for i := 1 to n do readln(a[i]);
   max:=1;
  for i:=1 to N do if a[max]<a[i] then max:=i;
  min:=max;
  for i:=1 to N do if a[min]>a[i] then min:=i;
  if min>max then
   begin
    min :=min+max;
    max := min-max;
    min := min-max;
   end;
 i:=min;
   while i<min+(max-min)/2 do
    if i<>(max-i+min) then
     begin
      a[i]:=a[i]+a[max-i+min];
      a[max-i+min]:=a[i]-a[max-i+min];
      a[i]:=a[i]-a[max-i+min];
      i:=i+1;
     end
    else i:=i+1;
  i := 1;
  for i := 1 to n do writeln('массив [ ',i,' ]= ',a[i]);
end.
