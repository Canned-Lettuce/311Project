clear all
close all
% Import files into matlab
%tableTitles = ('Year','Month','Equipment','MTBF','MTTR','Formula Availibilty','Speed Effective Speed');
Sixteen = readtable('Sixteen.xlsx','Range','A1:E673');
Seventeen = readtable('Seventeen.xlsx','Range','A1:E673');
Eighteen = readtable('Eighteen.xlsx','Range','A1:E673');
Nineteen = readtable('Nineteen.xlsx','Range','A1:E673');
Twenty = readtable('Twenty.xlsx','Range','A1:E673');

%Convert tables to sting array 
%sixteen
sixteenEquipment = char(table2array(Sixteen(:,3)));
sixteenMTBF = char(table2array(Sixteen(:,4)));
sixteenMTTR = char(table2array(Sixteen(:,5)));
%seventeen
seventeenEquipment = char(table2array(Seventeen(:,3)));
seventeenMTBF = char(table2array(Seventeen(:,4)));
seventeenMTTR = char(table2array(Seventeen(:,5)));
%eighteen
eighteenEquipment = char(table2array(Eighteen(:,3)));
eighteenMTBF = char(table2array(Eighteen(:,4)));
eighteenMTTR = char(table2array(Eighteen(:,5)));
%nineteen
nineteenEquipment = char(table2array(Nineteen(:,3)));
nineteenMTBF = char(table2array(Nineteen(:,4)));
nineteenMTTR = char(table2array(Nineteen(:,5)));
%twenty
twentyEquipment = char(table2array(Twenty(:,3)));
twentyMTBF = char(table2array(Twenty(:,4)));
twentyMTTR = char(table2array(Twenty(:,5)));

%Create Equipment name vector
equipment = cat(1,sixteenEquipment,seventeenEquipment,eighteenEquipment,nineteenEquipment,twentyEquipment);
equipment = string(equipment(:,1:3));

%Convert MTBF to seconds:
% Sixteen
for i = 1:672
    duration = 0;
    for j = 1:length(sixteenMTBF(i,:))
        if sixteenMTBF(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(sixteenMTBF(i,j-1))*86400;
        elseif sixteenMTBF(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(sixteenMTBF(i,j-2))*3600 + str2num(sixteenMTBF(i,j-1))*3600;
        elseif sixteenMTBF(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(sixteenMTBF(i,j-2))*60 + str2num(sixteenMTBF(i,j-1))*60;
        elseif sixteenMTBF(i,j) == 's'
            if length(sixteenMTBF(i,1:j)) <= 2
                duration = duration + str2num(sixteenMTBF(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(sixteenMTBF(i,j-2))*10 + str2num(sixteenMTBF(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        sixteenMTBFSeconds(i,1) = duration;
    end
end

% Seventeen
for i = 1:672
    duration = 0;
    for j = 1:length(seventeenMTBF(i,:))
        if seventeenMTBF(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(seventeenMTBF(i,j-1))*86400;
        elseif seventeenMTBF(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(seventeenMTBF(i,j-2))*3600 + str2num(seventeenMTBF(i,j-1))*3600;
        elseif seventeenMTBF(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(seventeenMTBF(i,j-2))*60 + str2num(seventeenMTBF(i,j-1))*60;
        elseif seventeenMTBF(i,j) == 's'
            if length(seventeenMTBF(i,1:j)) <= 2
                duration = duration + str2num(seventeenMTBF(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(seventeenMTBF(i,j-2))*10 + str2num(seventeenMTBF(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        seventeenMTBFSeconds(i,1) = duration;
    end
end

% Eighteen
for i = 1:672
    duration = 0;
    for j = 1:length(eighteenMTBF(i,:))
        if eighteenMTBF(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(eighteenMTBF(i,j-1))*86400;
        elseif eighteenMTBF(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(eighteenMTBF(i,j-2))*3600 + str2num(eighteenMTBF(i,j-1))*3600;
        elseif eighteenMTBF(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(eighteenMTBF(i,j-2))*60 + str2num(eighteenMTBF(i,j-1))*60;
        elseif eighteenMTBF(i,j) == 's'
            if length(eighteenMTBF(i,1:j)) <= 2
                duration = duration + str2num(eighteenMTBF(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(eighteenMTBF(i,j-2))*10 + str2num(eighteenMTBF(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        eighteenMTBFSeconds(i,1) = duration;
    end
end

% Nineteen
for i = 1:672
    duration = 0;
    for j = 1:length(nineteenMTBF(i,:))
        if nineteenMTBF(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(nineteenMTBF(i,j-1))*86400;
        elseif nineteenMTBF(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(nineteenMTBF(i,j-2))*3600 + str2num(nineteenMTBF(i,j-1))*3600;
        elseif nineteenMTBF(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(nineteenMTBF(i,j-2))*60 + str2num(nineteenMTBF(i,j-1))*60;
        elseif nineteenMTBF(i,j) == 's'
            if length(nineteenMTBF(i,1:j)) <= 2
                duration = duration + str2num(nineteenMTBF(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(nineteenMTBF(i,j-2))*10 + str2num(nineteenMTBF(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        nineteenMTBFSeconds(i,1) = duration;
    end
end

% Twenty
for i = 1:672
    duration = 0;
    for j = 1:length(twentyMTBF(i,:))
        if twentyMTBF(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(twentyMTBF(i,j-1))*86400;
        elseif twentyMTBF(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(twentyMTBF(i,j-2))*3600 + str2num(twentyMTBF(i,j-1))*3600;
        elseif twentyMTBF(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(twentyMTBF(i,j-2))*60 + str2num(twentyMTBF(i,j-1))*60;
        elseif twentyMTBF(i,j) == 's'
            if length(twentyMTBF(i,1:j)) <= 2
                duration = duration + str2num(twentyMTBF(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(twentyMTBF(i,j-2))*10 + str2num(twentyMTBF(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        twentyMTBFSeconds(i,1) = duration;
    end
end

%Convert MTTR to seconds:
% Sixteen
for i = 1:672
    duration = 0;
    for j = 1:length(sixteenMTTR(i,:))
        if sixteenMTTR(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(sixteenMTTR(i,j-1))*86400;
        elseif sixteenMTTR(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(sixteenMTTR(i,j-2))*3600 + str2num(sixteenMTTR(i,j-1))*3600;
        elseif sixteenMTTR(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(sixteenMTTR(i,j-2))*60 + str2num(sixteenMTTR(i,j-1))*60;
        elseif sixteenMTTR(i,j) == 's'
            if length(sixteenMTTR(i,1:j)) <= 2
                duration = duration + str2num(sixteenMTTR(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(sixteenMTTR(i,j-2))*10 + str2num(sixteenMTTR(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        sixteenMTTRSeconds(i,1) = duration;
    end
end

% Seventeen
for i = 1:672
    duration = 0;
    for j = 1:length(seventeenMTTR(i,:))
        if seventeenMTTR(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(seventeenMTTR(i,j-1))*86400;
        elseif seventeenMTTR(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(seventeenMTTR(i,j-2))*3600 + str2num(seventeenMTTR(i,j-1))*3600;
        elseif seventeenMTTR(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(seventeenMTTR(i,j-2))*60 + str2num(seventeenMTTR(i,j-1))*60;
        elseif seventeenMTTR(i,j) == 's'
            if length(seventeenMTTR(i,1:j)) <= 2
                duration = duration + str2num(seventeenMTTR(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(seventeenMTTR(i,j-2))*10 + str2num(seventeenMTTR(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        seventeenMTTRSeconds(i,1) = duration;
    end
end

% Eighteen
for i = 1:672
    duration = 0;
    for j = 1:length(eighteenMTTR(i,:))
        if eighteenMTTR(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(eighteenMTTR(i,j-1))*86400;
        elseif eighteenMTTR(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(eighteenMTTR(i,j-2))*3600 + str2num(eighteenMTTR(i,j-1))*3600;
        elseif eighteenMTTR(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(eighteenMTTR(i,j-2))*60 + str2num(eighteenMTTR(i,j-1))*60;
        elseif eighteenMTTR(i,j) == 's'
            if length(eighteenMTTR(i,1:j)) <= 2
                duration = duration + str2num(eighteenMTTR(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(eighteenMTTR(i,j-2))*10 + str2num(eighteenMTTR(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        eighteenMTTRSeconds(i,1) = duration;
    end
end

% Nineteen
for i = 1:672
    duration = 0;
    for j = 1:length(nineteenMTTR(i,:))
        if nineteenMTTR(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(nineteenMTTR(i,j-1))*86400;
        elseif nineteenMTTR(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(nineteenMTTR(i,j-2))*3600 + str2num(nineteenMTTR(i,j-1))*3600;
        elseif nineteenMTTR(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(nineteenMTTR(i,j-2))*60 + str2num(nineteenMTTR(i,j-1))*60;
        elseif nineteenMTTR(i,j) == 's'
            if length(nineteenMTTR(i,1:j)) <= 2
                duration = duration + str2num(nineteenMTTR(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(nineteenMTTR(i,j-2))*10 + str2num(nineteenMTTR(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        nineteenMTTRSeconds(i,1) = duration;
    end
end

% Twenty
for i = 1:672
    duration = 0;
    for j = 1:length(twentyMTTR(i,:))
        if twentyMTTR(i,j) == 'd'
            test = 'd';
            duration = duration + str2num(twentyMTTR(i,j-1))*86400;
        elseif twentyMTTR(i,j) == 'h'
            test = 'h';
            duration = duration + str2num(twentyMTTR(i,j-2))*3600 + str2num(twentyMTTR(i,j-1))*3600;
        elseif twentyMTTR(i,j) == 'm'
            test = 'm';
            duration = duration + str2num(twentyMTTR(i,j-2))*60 + str2num(twentyMTTR(i,j-1))*60;
        elseif twentyMTTR(i,j) == 's'
            if length(twentyMTTR(i,1:j)) <= 2
                duration = duration + str2num(twentyMTTR(i,j-1));
                test = 's1';
            else
                duration = duration + str2num(twentyMTTR(i,j-2))*10 + str2num(twentyMTTR(i,j-1));
                test = 's2';
            end
            test = 'end';
        else
        end
        twentyMTTRSeconds(i,1) = duration;
    end
end

%Sum MTBF Arrays
sumSixteenMTBF = sum(sixteenMTBFSeconds);
sumSeventeenMTBF = sum(seventeenMTBFSeconds);
sumEighteenMTBF = sum(eighteenMTBFSeconds);
sumNineteenMTBF = sum(nineteenMTBFSeconds);
sumTwentyMTBF = sum(twentyMTBFSeconds);

%Sum MTTR Arrays
sumSixteenMTTR = sum(sixteenMTTRSeconds);
sumSeventeenMTTR = sum(seventeenMTTRSeconds);
sumEighteenMTTR = sum(eighteenMTTRSeconds);
sumNineteenMTTR = sum(nineteenMTTRSeconds);
sumTwentyMTTR = sum(twentyMTTRSeconds);

%Normalize Arrays
%MTBF
normalizedSixteenMTBFSeconds = sixteenMTBFSeconds/sumSixteenMTBF;
normalizedSeventeenMTBFSeconds = seventeenMTBFSeconds/sumSeventeenMTBF;
normalizedEighteenMTBFSeconds = eighteenMTBFSeconds/sumEighteenMTBF;
normalizedNineteenMTBFSeconds = nineteenMTBFSeconds/sumNineteenMTBF;
normalizedTwentyMTBFSeconds = twentyMTBFSeconds/sumTwentyMTBF;
%Normalized MTBF Plots
figure(1)
tiledlayout(5,1)
% 2016
nexttile
stem(normalizedSixteenMTBFSeconds)
title('2016 MTBF')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2017
nexttile
stem(normalizedSeventeenMTBFSeconds)
title('2017 MTBF')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2018
nexttile
stem(normalizedEighteenMTBFSeconds)
title('2018 MTBF')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2019
nexttile
stem(normalizedNineteenMTBFSeconds)
title('2019 MTBF')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2020
nexttile
stem(normalizedTwentyMTBFSeconds)
title('2020 MTBF')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})

%MTTR
normalizedSixteenMTTRSeconds = sixteenMTTRSeconds/sumSixteenMTTR;
normalizedSeventeenMTTRSeconds = seventeenMTTRSeconds/sumSeventeenMTTR;
normalizedEighteenMTTRSeconds = eighteenMTTRSeconds/sumEighteenMTTR;
normalizedNineteenMTTRSeconds = nineteenMTTRSeconds/sumNineteenMTTR;
normalizedTwentyMTTRSeconds = twentyMTTRSeconds/sumTwentyMTTR;

%Normalized MTTR Plots
figure(2)
tiledlayout(5,1)
% 2016
nexttile
stem(normalizedSixteenMTTRSeconds)
title('2016 MTTR')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2017
nexttile
stem(normalizedSeventeenMTTRSeconds)
title('2017 MTTR')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2018
nexttile
stem(normalizedEighteenMTTRSeconds)
title('2018 MTTR')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2019
nexttile
stem(normalizedNineteenMTTRSeconds)
title('2019 MTTR')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% 2020
nexttile
stem(normalizedTwentyMTTRSeconds)
title('2020 MTTR')
set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})

%Creating 3360x2 matrices
normalizedMTBFSeconds = cat(1,normalizedSixteenMTBFSeconds,normalizedSeventeenMTBFSeconds,normalizedEighteenMTBFSeconds,normalizedNineteenMTBFSeconds,normalizedTwentyMTBFSeconds);
combinedNormalizedMTBFSeconds = table(equipment,normalizedMTBFSeconds);
normalizedMTTRSeconds = cat(1,normalizedSixteenMTTRSeconds,normalizedSeventeenMTTRSeconds,normalizedEighteenMTTRSeconds,normalizedNineteenMTTRSeconds,normalizedTwentyMTTRSeconds);
combinedNormalizedMTTRSeconds = table(equipment,normalizedMTTRSeconds);

% Plot all MTBFs vs. Year
figure(3)
stem(normalizedMTBFSeconds);
title('2016-2020 MTFB')
set(gca, 'XTick', 336:672:3360, 'XTickLabel', {'2016', '2017', '2018', '2019', '2020'})
% Plot all MTTRs vs. Year
figure(4)
stem(normalizedMTTRSeconds);
title('2016-2020 MTTR')
set(gca, 'XTick', 336:672:3360, 'XTickLabel', {'2016', '2017', '2018', '2019', '2020'})

