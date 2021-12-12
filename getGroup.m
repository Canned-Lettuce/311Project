%% this function formats a boolean matrix and prints out a list of grouped machines
function groups = getGroup(table1,table2)
groups = zeros(56,56);
for i = 1:56
    k = 1;
    groups(i,k) = i;
    for j = 1:56
        if (table1(i,j) == 1 && table2(i,j) == 1 && i ~= j)
            k = k + 1;
            groups(i,k) = j;
        end
    end
end
groups = groups(1:end,1:10);