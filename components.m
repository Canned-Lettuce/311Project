%% this script uses the built in pca function to find correlations in machines
%% the pca function gives a coefficient matrix showing the "signature" of each machine
%% comparing these signatures shows which machines are strongly correlated
% tol = 0.34 works well
machineNum = 5;
tol = sqrt(2) / (4*pi/3);

numElements = 56;

%% write script to use pca    => coeff = pca(normal_table.');
table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
N = 60;
table_WSS = zeros(56,N);
averageProcess = zeros(1,N);
% find average process
for i = 1:56
    averageProcess = averageProcess + normal_table(i,1:N)/sum(table(i,1:N));
end
averageProcess = averageProcess / sum(averageProcess);
% find stationary process
for i = 1:56
    s = sum(table(i,1:N));
    table_WSS(i,1:N) = table(i,1:N) - s * averageProcess;
end
% find normal stationary process
normal_table_WSS = zeros(56,N);
for i = 1:56
    for j = 1:N
        normal_table_WSS(i,j) = table_WSS(i,j) / sum(abs(table_WSS(i,1:N)));
    end
end
[coeff,score,latent] = pca(normal_table_WSS.');

%% create a boolean matrix for some tolerance
matrix = zeros(56,56);
for i = 1:56
    for j = 1:56
        distance = 0;
        for k = 2:numElements
            distance = distance + (latent(k)*(coeff(i,k) - coeff(j,k))^2)/latent(2);
            %distance = distance + (coeff(i,k)-coeff(j,k))^2;
        end
        distance = sqrt(distance);
        if (distance < tol)
            matrix(i,j) = 1;
        end
    end
end

%% use boolean matrix to find similar trends for a given machine
clf
figure(2)
row = matrix(machineNum,1:end);
for i = 1:56
    if (row(i))
        plot(normal_table(i,1:end))
        hold on
    end
end
hold off
    
%% idea: find groups as group_n+1 is the biggest group not yet included

