function newTable = normalize(table)
newTable = zeros(size(table,1),size(table,2));
for i = 1:size(table,1)
    row = table(i,1:end);
    s = 0;
    for j = 1:size(table,2)
        s = s + abs(row(j));
    end
    row = row / s;
    newTable(i,1:size(table,2)) = row;
end