threshold = +0.4;
index = 22;

table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
N = 60;
table_WSS = zeros(56,N);
averageProcess = zeros(1,N);
for i = 1:56
    averageProcess = averageProcess + normal_table(i,1:N)/sum(table(i,1:N));
end
averageProcess = averageProcess / sum(averageProcess);
for i = 1:56
    s = sum(table(i,1:N));
    table_WSS(i,1:N) = table(i,1:N) - s * averageProcess;
end
normal_table_WSS = zeros(56,N);
for i = 1:56
    for j = 1:N
        normal_table_WSS(i,j) = table_WSS(i,j) / sum(abs(table_WSS(i,1:N)));
    end
end
%%imagesc(table_WSS)
%%imagesc(normal_table_WSS)
clf
%%figure(1)
%%r = pcorr(normal_table_WSS);
figure(1)
row = r(index,1:end);
matrix_c = zeros(56,56);
for i = 1:56
    for j = 1:56
        if (r(i,j) > threshold)
            matrix_c(i,j) = 1;
        end
    end
    if (row(i) > threshold)
        hold on
        plot(normal_table(i,1:end))
    end
end
hold off