
table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
maxlag = 3;
lag_matrix = zeros(56, 56);
coeff_matrix = zeros(56, 56);
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

%surf(lag_matrix)
%surf(coeff_matrix)
close all
for i = 1:56
    for j = 1:56
        if (coeff_matrix(j, i) ~= 0)
            figure(i*j)
            hold on
            plot(normal_table(i, 1:end));
            plot(circshift(normal_table(j, 1:end), -lag_matrix(j, i)));
            legend(int2str(i), int2str(j))
            hold off
        end
    end
end
            

%{
data = normal_table(5, 1:40);
%x = normal_table(3, 1:40);
%[d2,p2] = lpc(x,7);
%xh = filter(-d2(2:end),1,x);
%xp = predict(xh, 41:60);

sys = ar(data, 5);
k = 20;
p = forecast(sys,data',k);
%p = normalize(p);
p = abs(p');
hold on
plot(1:60, normal_table(5, 1:60))
plot(circshift(normal_table(8, 1:end), 0))
plot(40:59, p)
hold off
t = normal_table(5, 40:59);
corrcoef(t, p)
%hold on
%plot(xp(1:60))
%plot(normal_table(3, 1:end))
%hold off
%fa = zeros(1, 60);
%fb = zeros(1, 60);
%{
for i = 1:60
    fa(i) = makedist('Exponential', 'mu', la(i));
    pa(i) = pdf('Exponential', fa(i));
end
%}
%}
