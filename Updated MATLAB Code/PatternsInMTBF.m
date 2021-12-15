%-1,0,1 Matrix
for i = 1:1:56
    for k = 1:1:70
        if completeMTBFHours(i,k) < completeMTBFHours(i,k+1)
            PulseMatrix(i,k) = 1;
        elseif completeMTBFHours(i,k) > completeMTBFHours(i,k+1)
            PulseMatrix(i,k) = -1;
        else
            PulseMatrix(i,k) = 0;
        end
    end
end

%Summing Monthly MTBF
for i = 1:1:1
    pulse(i, 1:70) = zeros;%creates zero row
    pulseSignal = 0;
    for j = 1:1:70
        if PulseMatrix(i,j) == -1
            pulseSignal = pulseSignal-1;
            pulse(i,j) = pulseSignal;
        elseif PulseMatrix(i,j) == 1
            pulseSignal = pulseSignal+1;
            pulse(i,j) = pulseSignal;
        else
            pulse(i,j) = pulseSignal;
        end
    end
end
%%
% %Plotting Trends for eqipment
% x = 1:70;
% for i = 1:1:1
%     figure(i)
%     y = pulse(i, 60:70);
%     stem(y)
%     legend('MTBF')
%     formatSpec = "Equipment %d - Increasing/Decreasing MTBF - 2016 to 2021"; 
%     title(sprintf(formatSpec,i));
%     xlabel('Years')
%     set(gca, 'XTick', 6:12:70, 'XTickLabel', {'2016', '2017', '2018', '2019', '2020', '2021'})
%     ylabel('Increasing/Decreasing MTBF')
% end
%%
%Sum Columns and average
for i = 1:1:71
    monthlyAverageCompleteMTBFHours(i) = sum(completeMTBFHours(:,i))/56;
end

for i = 1:1:70
    if monthlyAverageCompleteMTBFHours(1,i) < monthlyAverageCompleteMTBFHours(1,i+1)
        PulseMatrixAverage(1,i) = 1;
    elseif monthlyAverageCompleteMTBFHours(1,i) > monthlyAverageCompleteMTBFHours(1,i+1)
        PulseMatrixAverage(1,i) = -1;
    else
        PulseMatrixAverage(1,i) = 0;
    end
end
%%
%Summing Monthly MTBF into average
pulseAverage(1, 1:70) = zeros;%creates zero row
pulseSignalAverage = 0;
for j = 1:1:70
    if PulseMatrixAverage(1,j) == -1
        pulseSignalAverage = pulseSignalAverage-1;
        pulseAverage(1,j) = pulseSignalAverage;
    elseif PulseMatrixAverage(1,j) == 1
        pulseSignalAverage = pulseSignalAverage+1;
        pulseAverage(1,j) = pulseSignalAverage;
    else
        pulseAverage(1,j) = pulseSignalAverage;
    end
end
%%
% %Plotting Trends for average MTBF
% figure(1)
% y = pulseAverage(1,:);
% stem(y)
% legend('MTBF')
% formatSpec = "%d Bottle Average MTBF - Increasing/Decreasing MTBF - 2016 to 2021"; 
% title(sprintf(formatSpec,3));
% xlabel('MONTHS')
% set(gca, 'XTick', 1:1:70, 'XTickLabel', {'F','M','A','M','J','J','A','S','O','N','D','J'})
% xtickangle(0)
% ylabel('Increasing/Decreasing MTBF')

%%
%Summed Columns for overall MTBF Score
for i = 1:70
    PulseMatrix(57,i) = 0;
    PulseMatrix(57,i) = sum(PulseMatrix(:,i));
end
%%
% %Plotting Trends for Summed values
% figure(2)
% y = PulseMatrix(57,:)
% stem(y)
% legend('MTBF')
% formatSpec = "%d Bottle Summed MTBF Pulse - 2016 to 2021"; 
% title(sprintf(formatSpec,3));
% xlabel('MONTHS')
% set(gca, 'XTick', 1:1:70, 'XTickLabel', {'F','M','A','M','J','J','A','S','O','N','D','J'})
% xtickangle(0)
% ylabel('Increasing/Decreasing MTBF')

%%
%Month increase/decrease clusters
months = ["Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec","Jan"];
months = months';
j = 0;
for i = 1:1:12
%     reOrganizedPulseMatrix(:,[i+j,i+j+1,i+j+2,i+j+3,i+j+4]) = PulseMatrix(:,[i,i+12,i+24,i+36,i+48]);
    string(months(i))
    if i == 11
        reOrganizedPulseMatrix(:,[i+j,i+j+1,i+j+2,i+j+3,i+j+4]) = PulseMatrix(:,[i,i+12,i+24,i+36,i+48]);
        j = j+4;
    elseif i == 12
        reOrganizedPulseMatrix(:,[i+j,i+j+1,i+j+2,i+j+3,i+j+4]) = PulseMatrix(:,[i,i+12,i+24,i+36,i+48]);
        j = 0;
    else
        reOrganizedPulseMatrix(:,[i+j,i+j+1,i+j+2,i+j+3,i+j+4,i+j+5]) = PulseMatrix(:,[i,i+12,i+24,i+36,i+48,i+60]);
        j = j+5;
    end
end

