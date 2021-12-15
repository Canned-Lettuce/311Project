%% This script identifies shifts and strongly correlated shifted graphs
table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
maxlag = 3; % Maximum amount of moths that can be shifted by
lag_matrix = zeros(56, 56);
coeff_matrix = zeros(56, 56);
%%Find signals that correlated strongly and how much they are shifted by
for a = 1:56
    for b = 1:56 

        D = finddelay(normal_table(a, 1:end), normal_table(b, 1:end), maxlag);
        corr = corrcoef(normal_table(a, 1:end), circshift(normal_table(b, 1:end), -D));
        if (corr(1, 2) > 0.5)
            if D > 0
                lag_matrix(b, a) = D;
                coeff_matrix(b, a) = corr(1,2);
                
                
            end
        end
    end
end
%%Display the graphs
close all
for i = 1:56
    for j = 1:56
        if (coeff_matrix(j, i) ~= 0)
            figure(i*j)
            hold on
            plot(normal_table(i, 1:end));
            plot(circshift(normal_table(j, 1:end), -lag_matrix(j, i)));
            legend(int2str(i), int2str(j))
            xlabel('Months')
            ylabel('Normalized MTBF')
            title('MTBF of Correlated Machines shifted by up to 3 months')
            hold off
        end
    end
end
