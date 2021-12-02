
table = load("allMTBF.csv");
table = [table(1:end,1:42),table(1:end,42),table(1:end,44:end)];
normal_table = normalize(table);
maxlag = 3;
lag_matrix = zeros(56, 56);
for a = 1:56
    for b = 1:56 

        D = finddelay(normal_table(a, 1:end), normal_table(b, 1:end), maxlag);
        if (corrcoef(normal_table(a, 1:end), circshift(normal_table(b, 1:end), -D)) > 0.5)
            if D > 0
                lag_matrix(b, a) = D;
            end
        end
        %corrcoef(normal_table(a, 1:end), circshift(normal_table(b, 1:end), 0))

    end
end
data = normal_table(5, 1:40);
%surf(lag_matrix)
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

