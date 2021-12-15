function h = hypothesisTest(row)
temp = zeros(1,60);
for i = 1:60
    temp(i) = -cos((i-1)*pi/6);
end
temp = -normalize(temp);
row = normalize(row);
if (dot(temp,row) > 0.5*dot(temp,temp))
    h = 1;
else
    h = 0;
end

