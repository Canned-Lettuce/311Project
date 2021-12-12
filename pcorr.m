%% this function implements a pearson correlation coefficient and outputs
%  a matrix giving correlation coefficients for every pair of machines
function r = pcorr(table)
r = zeros(56,56);
for i = 1:56
    for j = 1:56
        x_av = sum(table(i,1:end));
        y_av = sum(table(j,1:end));
        N = 0;
        D_x = 0;
        D_y = 0;
        for k = 1:size(table,2)
            N = N + (table(i,k) - x_av)*(table(j,k) - y_av);
            D_x = D_x + (table(i,k) - x_av)^2;
            D_y = D_y + (table(j,k) - y_av)^2;
        end
        D = sqrt(D_x) * sqrt(D_y);
        r(i,j) = N / D;
    end
end
%imagesc(r)
%caxis([-0.5 0.5])