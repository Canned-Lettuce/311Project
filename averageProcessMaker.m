%% this script implements the pearson correlation coefficient using a
%  WSS normalized version of the data. It creates a matrix of correlation
%  coefficients, and a boolean matrix of highly correlated machines.
threshold = +0.5;
index = 11;
%% load in data
table = load("allMTBF.csv");
normal_table = normalize(table);
N = 10;
table_WSS = zeros(56,N);
averageProcess = zeros(1,N);
% create mean vector
for i = 1:56
    averageProcess = averageProcess + normal_table(i,1:N)/sum(table(i,1:N));
end
averageProcess = averageProcess / sum(averageProcess);
% create WSS vector
for i = 1:56
    s = sum(table(i,1:N));
    table_WSS(i,1:N) = table(i,1:N) - s * averageProcess;
end
% normalize WSS vector
normal_table_WSS = zeros(56,N);
for i = 1:56
    for j = 1:N
        normal_table_WSS(i,j) = table_WSS(i,j) / sum(abs(table_WSS(i,1:N)));
    end
end
%% get pearson correlation coefficients
clf
r = pcorr(normal_table_WSS);
figure(1)
row = r(index,1:end);
matrix_p = zeros(56,56);
% create boolean matrix using threshold
for i = 1:56
    for j = 1:56
        if (r(i,j) > threshold)
            matrix_p(i,j) = 1;
        end
    end
    if (row(i) > threshold)
        hold on
        plot(normal_table(i,1:end))
    end
end
hold off