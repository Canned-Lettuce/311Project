%% this script uses the built in pca function to find correlations in machines
%  the pca function gives a coefficient matrix showing the "signature" of each machine
%  comparing these signatures shows which machines are strongly correlated
% tol = 0.34 works well
machineNum = 49;
tol = 0.34;
numElements = 23;

%% write script to use pca    => coeff = pca(normal_table.');
table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
[coeff,score,latent,tsquared,explained,mu] = pca(normal_table.');

%% create a boolean matrix for some tolerance
matrix_c = zeros(56,56);
matrixd = zeros(56,56);
for i = 1:56
    for j = 1:56
        distance = 0;
        row1 = coeff(i,1:numElements)./norm(coeff(i,1:numElements));
        row2 = coeff(j,1:numElements)./norm(coeff(j,1:numElements));
        
        for k = 1:numElements
            %distance = distance + explained(k)*(coeff(i,k) - coeff(j,k))^2;
            %distance = distance + abs(coeff(i,k)^2 - coeff(j,k)^2);
            distance = distance + explained(k)*(row1(k) - row2(k))^2;
        end
        distance = sqrt(distance) / sum(explained(1:numElements));
        %distance = sqrt(distance);
        matrixd(i,j) = distance;
        if (distance < tol)
            matrix_c(i,j) = 1;
        end
    end
end

%% use boolean matrix to find similar trends for a given machine
clf
row = matrix_c(machineNum,1:end);
for i = 1:56
    if (row(i))
        plot(normal_table(i,1:end))
        hold on
    end
end
hold off
    
%% idea: find groups as group_n+1 is the biggest group not yet included

