program zadanie3;

var 
  x, y: Integer;

function stepen(a, b: Integer): Integer;
begin
  // 1. Базовые случаи
  if b = 0 then
    stepen := 1
  else if b > 0 then
    // 2. Рекурсивный вызов с редукцией (b -> b-1)
    // 3. Комбинирование результата (a * ...)
    stepen := a * stepen(a, b - 1)
  else
    // Отрицательная степень (доп. обработка)
    stepen := 1 div stepen(a, -b);
end;

begin
  writeln('Число:');
  readln(x);
  writeln('Степень:');
  readln(y);
  writeln(x, ' в степени ', y, ' = ', stepen(x, y));
end.
