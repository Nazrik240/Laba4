var H1 :array[1..1000] of integer; //Индекс таксиста
M1 :array[1..1000] of integer; //Индекс сотрудника
H :array[1..1000] of integer; //Тариф таксиста
M :array[1..1000] of integer; //Растояния до дома сотрудника
j,N,i,k:integer;
begin
writeln('Введите количество сотрудников');
readln(N);  //Ввод кол-во сотрудников
k:=0;
begin
writeln('Введите растояния до дома для каждого сотрудника'); 
for i:=1 to N do read(M[i]); //Ввод расстояния
writeln('Введите тарифы каждого таксиста'); 
for i:=1 to N do read(H[i]); //Ввод тарифа
for i:=1 to N do
begin
if k<N then k:=k+1;
H1[i]:=k;
M1[i]:=k;
end;
end;
      begin // Сортировка расстояния
 for i:=1 to N-1 do 
        for j:=1 to N-i do
            if M[j] > M[j+1] then begin
                Swap(M[j],M[j+1]);
               Swap(M1[j],M1[j+1])
                end;      
       end;
       begin
 for i:=1 to N-1 do // Сортировка тарифа
        for j:=1 to N-i do
            if H[j] < H[j+1] then begin
                Swap(H[j],H[j+1]);
               Swap(H1[j],H1[j+1])
                end;      
       end;
begin 
  for i:=1 to N do  writeln('Сотрудник № ',M1[i],' Поедет на такси № ',H1[i]);
    writeln(' ');
end;
end.