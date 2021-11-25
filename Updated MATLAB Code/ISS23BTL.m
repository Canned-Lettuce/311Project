clear all
close all

%1. Import files into MATLAB
Sixteen = readtable('Sixteen.xlsx','Range','A1:E673');
Seventeen = readtable('Seventeen.xlsx','Range','A1:E673');
Eighteen = readtable('Eighteen.xlsx','Range','A1:E673');
Nineteen = readtable('Nineteen.xlsx','Range','A1:E673');
Twenty = readtable('Twenty.xlsx','Range','A1:E673');

%2. Convert tables to sting array
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

%3. Create Equipment name vector
equipment = cat(1,sixteenEquipment,seventeenEquipment,eighteenEquipment,nineteenEquipment,twentyEquipment);
equipment = string(equipment(:,1:3));

%4. Convert MTBF to seconds than seconds/3600 for hours:
% Sixteen
for i = 1:672
    duration = 0;
    for k = 1:length(sixteenMTBF(i,:))
        if sixteenMTBF(i,k) == 'd'
            duration = duration + str2num(sixteenMTBF(i,k-1))*86400;
        elseif sixteenMTBF(i,k) == 'h'
            duration = duration + str2num(sixteenMTBF(i,k-2))*36000 + str2num(sixteenMTBF(i,k-1))*3600;
        elseif sixteenMTBF(i,k) == 'm'
            duration = duration + str2num(sixteenMTBF(i,k-2))*600 + str2num(sixteenMTBF(i,k-1))*60;
        elseif sixteenMTBF(i,k) == 's'
            if length(sixteenMTBF(i,1:k)) <= 2
                duration = duration + str2num(sixteenMTBF(i,k-1));
            else
                duration = duration + str2num(sixteenMTBF(i,k-2))*10 + str2num(sixteenMTBF(i,k-1));
            end
        else
        end
        sixteenMTBFHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Seventeen
for i = 1:672
    duration = 0;
    for k = 1:length(seventeenMTBF(i,:))
        if seventeenMTBF(i,k) == 'd'
            duration = duration + str2num(seventeenMTBF(i,k-1))*86400;
        elseif seventeenMTBF(i,k) == 'h'
            duration = duration + str2num(seventeenMTBF(i,k-2))*36000 + str2num(seventeenMTBF(i,k-1))*3600;
        elseif seventeenMTBF(i,k) == 'm'
            duration = duration + str2num(seventeenMTBF(i,k-2))*600 + str2num(seventeenMTBF(i,k-1))*60;
        elseif seventeenMTBF(i,k) == 's'
            if length(seventeenMTBF(i,1:k)) <= 2
                duration = duration + str2num(seventeenMTBF(i,k-1));
            else
                duration = duration + str2num(seventeenMTBF(i,k-2))*10 + str2num(seventeenMTBF(i,k-1));
            end
        else
        end
        seventeenMTBFHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Eighteen
for i = 1:672
    duration = 0;
    for k = 1:length(eighteenMTBF(i,:))
        if eighteenMTBF(i,k) == 'd'
            duration = duration + str2num(eighteenMTBF(i,k-1))*86400;
        elseif eighteenMTBF(i,k) == 'h'
            duration = duration + str2num(eighteenMTBF(i,k-2))*36000 + str2num(eighteenMTBF(i,k-1))*3600;
        elseif eighteenMTBF(i,k) == 'm'
            duration = duration + str2num(eighteenMTBF(i,k-2))*600 + str2num(eighteenMTBF(i,k-1))*60;
        elseif eighteenMTBF(i,k) == 's'
            if length(eighteenMTBF(i,1:k)) <= 2
                duration = duration + str2num(eighteenMTBF(i,k-1));
            else
                duration = duration + str2num(eighteenMTBF(i,k-2))*10 + str2num(eighteenMTBF(i,k-1));
            end
        else
        end
        eighteenMTBFHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Nineteen
for i = 1:672
    duration = 0;
    for k = 1:length(nineteenMTBF(i,:))
        if nineteenMTBF(i,k) == 'd'
            duration = duration + str2num(nineteenMTBF(i,k-1))*86400;
        elseif nineteenMTBF(i,k) == 'h'
            duration = duration + str2num(nineteenMTBF(i,k-2))*36000 + str2num(nineteenMTBF(i,k-1))*3600;
        elseif nineteenMTBF(i,k) == 'm'
            duration = duration + str2num(nineteenMTBF(i,k-2))*600 + str2num(nineteenMTBF(i,k-1))*60;
        elseif nineteenMTBF(i,k) == 's'
            if length(nineteenMTBF(i,1:k)) <= 2
                duration = duration + str2num(nineteenMTBF(i,k-1));
            else
                duration = duration + str2num(nineteenMTBF(i,k-2))*10 + str2num(nineteenMTBF(i,k-1));
            end
        else
        end
        nineteenMTBFHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Twenty
for i = 1:672
    duration = 0;
    for k = 1:length(twentyMTBF(i,:))
        if twentyMTBF(i,k) == 'd'
            duration = duration + str2num(twentyMTBF(i,k-1))*86400;
        elseif twentyMTBF(i,k) == 'h'
            duration = duration + str2num(twentyMTBF(i,k-2))*36000 + str2num(twentyMTBF(i,k-1))*3600;
        elseif twentyMTBF(i,k) == 'm'
            duration = duration + str2num(twentyMTBF(i,k-2))*600 + str2num(twentyMTBF(i,k-1))*60;
        elseif twentyMTBF(i,k) == 's'
            if length(twentyMTBF(i,1:k)) <= 2
                duration = duration + str2num(twentyMTBF(i,k-1));
            else
                duration = duration + str2num(twentyMTBF(i,k-2))*10 + str2num(twentyMTBF(i,k-1));
            end
        else
        end
        twentyMTBFHours(i,1) = duration/3600; %converts seconds to hours
    end
end

%5. Convert MTTR to seconds:
% Sixteen
for i = 1:672
    duration = 0;
    for k = 1:length(sixteenMTTR(i,:))
        if sixteenMTTR(i,k) == 'd'
            duration = duration + str2num(sixteenMTTR(i,k-1))*86400;
        elseif sixteenMTTR(i,k) == 'h'
            duration = duration + str2num(sixteenMTTR(i,k-2))*36000 + str2num(sixteenMTTR(i,k-1))*3600;
        elseif sixteenMTTR(i,k) == 'm'
            duration = duration + str2num(sixteenMTTR(i,k-2))*600 + str2num(sixteenMTTR(i,k-1))*60;
        elseif sixteenMTTR(i,k) == 's'
            if length(sixteenMTTR(i,1:k)) <= 2
                duration = duration + str2num(sixteenMTTR(i,k-1));
            else
                duration = duration + str2num(sixteenMTTR(i,k-2))*10 + str2num(sixteenMTTR(i,k-1));
            end
        else
        end
        sixteenMTTRHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Seventeen
for i = 1:672
    duration = 0;
    for k = 1:length(seventeenMTTR(i,:))
        if seventeenMTTR(i,k) == 'd'
            duration = duration + str2num(seventeenMTTR(i,k-1))*86400;
        elseif seventeenMTTR(i,k) == 'h'
            duration = duration + str2num(seventeenMTTR(i,k-2))*36000 + str2num(seventeenMTTR(i,k-1))*3600;
        elseif seventeenMTTR(i,k) == 'm'
            duration = duration + str2num(seventeenMTTR(i,k-2))*600 + str2num(seventeenMTTR(i,k-1))*60;
        elseif seventeenMTTR(i,k) == 's'
            if length(seventeenMTTR(i,1:k)) <= 2
                duration = duration + str2num(seventeenMTTR(i,k-1));
            else
                duration = duration + str2num(seventeenMTTR(i,k-2))*10 + str2num(seventeenMTTR(i,k-1));
            end
        else
        end
        seventeenMTTRHours(i,1) = duration/3600; %converts seconds to hours

    end
end

% Eighteen
for i = 1:672
    duration = 0;
    for k = 1:length(eighteenMTTR(i,:))
        if eighteenMTTR(i,k) == 'd'
            duration = duration + str2num(eighteenMTTR(i,k-1))*86400;
        elseif eighteenMTTR(i,k) == 'h'
            duration = duration + str2num(eighteenMTTR(i,k-2))*36000 + str2num(eighteenMTTR(i,k-1))*3600;
        elseif eighteenMTTR(i,k) == 'm'
            duration = duration + str2num(eighteenMTTR(i,k-2))*600 + str2num(eighteenMTTR(i,k-1))*60;
        elseif eighteenMTTR(i,k) == 's'
            if length(eighteenMTTR(i,1:k)) <= 2
                duration = duration + str2num(eighteenMTTR(i,k-1));
            else
                duration = duration + str2num(eighteenMTTR(i,k-2))*10 + str2num(eighteenMTTR(i,k-1));
            end
        else
        end
        eighteenMTTRHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Nineteen
for i = 1:672
    duration = 0;
    for k = 1:length(nineteenMTTR(i,:))
        if nineteenMTTR(i,k) == 'd'
            duration = duration + str2num(nineteenMTTR(i,k-1))*86400;
        elseif nineteenMTTR(i,k) == 'h'
            duration = duration + str2num(nineteenMTTR(i,k-2))*36000 + str2num(nineteenMTTR(i,k-1))*3600;
        elseif nineteenMTTR(i,k) == 'm'
            duration = duration + str2num(nineteenMTTR(i,k-2))*600 + str2num(nineteenMTTR(i,k-1))*60;
        elseif nineteenMTTR(i,k) == 's'
            if length(nineteenMTTR(i,1:k)) <= 2
                duration = duration + str2num(nineteenMTTR(i,k-1));
            else
                duration = duration + str2num(nineteenMTTR(i,k-2))*10 + str2num(nineteenMTTR(i,k-1));
            end
        else
        end
        nineteenMTTRHours(i,1) = duration/3600; %converts seconds to hours
    end
end

% Twenty
for i = 1:672
    duration = 0;
    for k = 1:length(twentyMTTR(i,:))
        if twentyMTTR(i,k) == 'd'
            duration = duration + str2num(twentyMTTR(i,k-1))*86400;
        elseif twentyMTTR(i,k) == 'h'
            duration = duration + str2num(twentyMTTR(i,k-2))*36000 + str2num(twentyMTTR(i,k-1))*3600;
        elseif twentyMTTR(i,k) == 'm'
            duration = duration + str2num(twentyMTTR(i,k-2))*600 + str2num(twentyMTTR(i,k-1))*60;
        elseif twentyMTTR(i,k) == 's'
            if length(twentyMTTR(i,1:k)) <= 2
                duration = duration + str2num(twentyMTTR(i,k-1));
            else
                duration = duration + str2num(twentyMTTR(i,k-2))*10 + str2num(twentyMTTR(i,k-1));
            end
        else
        end
        twentyMTTRHours(i,1) = duration/3600; %converts seconds to hours
    end
end

%6. Reshape Matrice 56x12 MTBF
reshapedSixteenMTBFHours = reshape(sixteenMTBFHours,56,12);
reshapedSeventeenMTBFHours = reshape(seventeenMTBFHours,56,12);
reshapedEightteenMTBFHours = reshape(eighteenMTBFHours,56,12);
reshapedNineteenMTBFHours = reshape(nineteenMTBFHours,56,12);
reshapedTwentyMTBFHours = reshape(twentyMTBFHours,56,12);

%7. Sum MTBF Arrays
sumSixteenMTBF = sum(sixteenMTBFHours);
sumSeventeenMTBF = sum(seventeenMTBFHours);
sumEighteenMTBF = sum(eighteenMTBFHours);
sumNineteenMTBF = sum(nineteenMTBFHours);
sumTwentyMTBF = sum(twentyMTBFHours);

%8. Sum MTTR Arrays
sumSixteenMTTR = sum(sixteenMTTRHours);
sumSeventeenMTTR = sum(seventeenMTTRHours);
sumEighteenMTTR = sum(eighteenMTTRHours);
sumNineteenMTTR = sum(nineteenMTTRHours);
sumTwentyMTTR = sum(twentyMTTRHours);

%9. Equipment Sequenced by Month (Jan-Dec) and Corresponding Failure
%Density Function Matrices
%MTTR
%2016
k = 1;
for i = 1:56
    for j = 1:12
        sequencedSixteenMTTRHours(k) = sixteenMTTRHours(i+((j-1)*56));
        sequencedFDFSixteenMTTRHours(k) = 1/sixteenMTTRHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2017
k = 1;
for i = 1:56
    for j = 1:12
        sequencedSeventeenMTTRHours(k) = seventeenMTTRHours(i+((j-1)*56));
        sequencedFDFSeventeenMTTRHours(k) = 1/seventeenMTTRHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2018
k = 1;
for i = 1:56
    for j = 1:12
        sequencedEighteenMTTRHours(k) = eighteenMTTRHours(i+((j-1)*56));
        sequencedFDFEighteenMTTRHours(k) = 1/eighteenMTTRHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2019
k = 1;
for i = 1:56
    for j = 1:12
        sequencedNineteenMTTRHours(k) = nineteenMTTRHours(i+((j-1)*56));
        sequencedFDFNineteenMTTRHours(k) = 1/nineteenMTTRHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2020
k = 1;
for i = 1:56
    for j = 1:12
        sequencedTwentyMTTRHours(k) = twentyMTTRHours(i+((j-1)*56));
        sequencedFDFTwentyMTTRHours(k) = 1/twentyMTTRHours(i+((j-1)*56));
        k = k+1;
    end 
end

%MTBF
%2016
k = 1;
for i = 1:56
    for j = 1:12
        sequencedSixteenMTBFHours(k) = sixteenMTBFHours(i+((j-1)*56));
        sequencedFDFSixteenMTBFHours(k) = 1/sixteenMTBFHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2017
k = 1;
for i = 1:56
    for j = 1:12
        sequencedSeventeenMTBFHours(k) = seventeenMTBFHours(i+((j-1)*56));
        sequencedFDFSeventeenMTBFHours(k) = 1/seventeenMTBFHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2018
k = 1;
for i = 1:56
    for j = 1:12
        sequencedEighteenMTBFHours(k) = eighteenMTBFHours(i+((j-1)*56));
        sequencedFDFEighteenMTBFHours(k) = 1/eighteenMTBFHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2019
k = 1;
for i = 1:56
    for j = 1:12
        sequencedNineteenMTBFHours(k) = nineteenMTBFHours(i+((j-1)*56));
        sequencedFDFNineteenMTBFHours(k) = 1/nineteenMTBFHours(i+((j-1)*56));
        k = k+1;
    end 
end
%2020
k = 1;
for i = 1:56
    for j = 1:12
        sequencedTwentyMTBFHours(k) = twentyMTBFHours(i+((j-1)*56));
        sequencedFDFTwentyMTBFHours(k) = 1/twentyMTBFHours(i+((j-1)*56));
        k = k+1;
    end 
end

%10. Reshape Matrice 56x12 MTBF
reshapedSequencedSixteenMTBFHours = reshape(sequencedSixteenMTBFHours,12,56)';
reshapedSequencedFDFSixteenMTBFHours = reshape(sequencedFDFSixteenMTBFHours,12,56)';
reshapedSequencedFDFSeventeenMTBFHours = reshape(sequencedFDFSeventeenMTBFHours,56,12);
reshapedSequencedFDFEightteenMTBFHours = reshape(sequencedFDFEighteenMTBFHours,56,12);
reshapedSequencedFDFNineteenMTBFHours = reshape(sequencedFDFNineteenMTBFHours,56,12);
reshapedSequencedFDFTwentyMTBFHours = reshape(sequencedFDFTwentyMTBFHours,56,12);


%11. Failure Density Function Plots:
%Equipment 1 2016
h = 5;
figure(1)
sequencedFDFSixteenMTBFHours(1)
fplot(@(t) sequencedFDFSixteenMTBFHours(1)*exp(-sequencedFDFSixteenMTBFHours(1)*t),[0 h],'Linewidth',2);
hold on
 for i = 2:1:6
     sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],'Linewidth',2);
 end
  for i = 7:1:12
     sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],':','Linewidth',2);
  end
hold off
legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
title('Equipment 1 - Failure Density Function - 2016')
xlabel('Hours')
ylabel('Failure Density Function')

%Equipment 2 2016
figure(2)
sequencedFDFSixteenMTBFHours(13)
fplot(@(t) sequencedFDFSixteenMTBFHours(13)*exp(-sequencedFDFSixteenMTBFHours(13)*t),[0 h],'Linewidth',2);
hold on
 for i = 14:1:19
     sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],'Linewidth',2);
 end
  for i = 19:1:24
     sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],':','Linewidth',2);
  end
hold off
legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
title('Equipment 2 - Failure Density Function - 2016')
xlabel('Hours')
ylabel('Failure Density Function')

%Equipment B=3 2016
figure(3)
fplot(@(t) sequencedFDFSixteenMTBFHours(25)*exp(-sequencedFDFSixteenMTBFHours(13)*t),[0 h],'Linewidth',2);
hold on
 for i = 26:1:30
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],'Linewidth',2);
 end
  for i = 30:1:36
     fplot(@(t) sequencedFDFSixteenMTBFHours(i)*exp(-sequencedFDFSixteenMTBFHours(i)*t),[0 h],':','Linewidth',2);
  end
hold off
legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
title('Equipment 3 - Failure Density Function - 2016')
xlabel('Hours')
ylabel('Failure Density Function')



% %Normalize Arrays
% %MTBF
% normalizedSixteenMTBFSeconds = sixteenMTBFSeconds/sumSixteenMTBF;
% normalizedSeventeenMTBFSeconds = seventeenMTBFSeconds/sumSeventeenMTBF;
% normalizedEighteenMTBFSeconds = eighteenMTBFSeconds/sumEighteenMTBF;
% normalizedNineteenMTBFSeconds = nineteenMTBFSeconds/sumNineteenMTBF;
% normalizedTwentyMTBFSeconds = twentyMTBFSeconds/sumTwentyMTBF;
% 
% normalizedSummedSixteenMTBFseconds = summedSixteenMTBFsecoonds/sum(summedSixteenMTBFsecoonds);
% normalizedSummedSeventeenMTBFseconds = summedSeventeenMTBFsecoonds/sum(summedSeventeenMTBFsecoonds);
% normalizedSummedEighteenMTBFseconds = summedEighteenMTBFsecoonds/sum(summedEighteenMTBFsecoonds);
% normalizedSummedNineteenMTBFseconds = summedNineteenMTBFsecoonds/sum(summedNineteenMTBFsecoonds);
% normalizedSummedTwentyMTBFseconds = summedTwentyMTBFsecoonds/sum(summedTwentyMTBFsecoonds);

%Normalized MTBF Plots
% figure(1)
% tiledlayout(5,1)
% % 2016
% nexttile
% stem(normalizedSixteenMTBFSeconds)
% title('2016 MTBF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2017
% nexttile
% stem(normalizedSeventeenMTBFSeconds)
% title('2017 MTBF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2018
% nexttile
% stem(normalizedEighteenMTBFSeconds)
% title('2018 MTBF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2019
% nexttile
% stem(normalizedNineteenMTBFSeconds)
% title('2019 MTBF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2020
% nexttile
% stem(normalizedTwentyMTBFSeconds)
% title('2020 MTBF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})

%Normalized EMTBF Plots
% 2016
% figure(1)
% stem(normalizedSummedSixteenMTBFseconds)
% title('2016 EMTBF')
% set(gca, 'XTick', 1:56, 'XTickLabel', {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A2','B2','C2','D2','E2','F2','G2','H2','I2','J2','K2','L2','M2','N2','O2','P2','Q2','R2','S2','T2','U2','V2','W2','X2','Y2','Z2','A3','B3','C3','D3'})
% % 2017
% figure(2)
% stem(normalizedSummedSeventeenMTBFseconds)
% title('2017 EMTBF')
% set(gca, 'XTick', 1:56, 'XTickLabel', {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A2','B2','C2','D2','E2','F2','G2','H2','I2','J2','K2','L2','M2','N2','O2','P2','Q2','R2','S2','T2','U2','V2','W2','X2','Y2','Z2','A3','B3','C3','D3'})
% % 2018
% figure(3)
% stem(normalizedSummedEighteenMTBFseconds)
% title('2018 EMTBF')
% set(gca, 'XTick', 1:56, 'XTickLabel', {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A2','B2','C2','D2','E2','F2','G2','H2','I2','J2','K2','L2','M2','N2','O2','P2','Q2','R2','S2','T2','U2','V2','W2','X2','Y2','Z2','A3','B3','C3','D3'})
% % 2019
% figure(4)
% stem(normalizedSummedNineteenMTBFseconds)
% title('2019 EMTBF')
% set(gca, 'XTick', 1:56, 'XTickLabel', {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A2','B2','C2','D2','E2','F2','G2','H2','I2','J2','K2','L2','M2','N2','O2','P2','Q2','R2','S2','T2','U2','V2','W2','X2','Y2','Z2','A3','B3','C3','D3'})
% % 2020
% figure(5)
% stem(normalizedSummedTwentyMTBFseconds)
% title('2020 EMTBF')
% set(gca, 'XTick', 1:56, 'XTickLabel', {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A2','B2','C2','D2','E2','F2','G2','H2','I2','J2','K2','L2','M2','N2','O2','P2','Q2','R2','S2','T2','U2','V2','W2','X2','Y2','Z2','A3','B3','C3','D3'})
% 
% %MTTR
% normalizedSixteenMTTRSeconds = sixteenMTTRSeconds/sumSixteenMTTR;
% normalizedSeventeenMTTRSeconds = seventeenMTTRSeconds/sumSeventeenMTTR;
% normalizedEighteenMTTRSeconds = eighteenMTTRSeconds/sumEighteenMTTR;
% normalizedNineteenMTTRSeconds = nineteenMTTRSeconds/sumNineteenMTTR;
% normalizedTwentyMTTRSeconds = twentyMTTRSeconds/sumTwentyMTTR;

%Normalized MTTR Plots
% figure(2)
% tiledlayout(5,1)
% % 2016
% nexttile
% stem(normalizedSixteenMTTRSeconds)
% title('2016 MTTR')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2017
% nexttile
% stem(normalizedSeventeenMTTRSeconds)
% title('2017 MTTR')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2018
% nexttile
% stem(normalizedEighteenMTTRSeconds)
% title('2018 MTTR')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2019
% nexttile
% stem(normalizedNineteenMTTRSeconds)
% title('2019 MTTR')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2020
% nexttile
% stem(normalizedTwentyMTTRSeconds)
% title('2020 MTTR')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})

% %MTTF
% normalizedSixteenMTTFSeconds = sixteenMTTFSeconds/sumSixteenMTTF;
% normalizedSeventeenMTTFSeconds = seventeenMTTFSeconds/sumSeventeenMTTF;
% normalizedEighteenMTTFSeconds = eighteenMTTFSeconds/sumEighteenMTTF;
% normalizedNineteenMTTFSeconds = nineteenMTTFSeconds/sumNineteenMTTF;
% normalizedTwentyMTTFSeconds = twentyMTTFSeconds/sumTwentyMTTF;
% 
% normalizedSummedSixteenMTTFsecoonds = summedSixteenMTTFsecoonds/sumSixteenMTTF;
% normalizedSummedSeventeenMTTFsecoonds = summedSeventeenMTTFsecoonds/sumSeventeenMTTF;
% normalizedSummedEighteenMTTFsecoonds = summedEighteenMTTFsecoonds/sumEighteenMTTF;
% normalizedSummedNineteenMTTFsecoonds = summedNineteenMTTFsecoonds/sumNineteenMTTF;
% normalizedSummedTwentyMTTFsecoonds = summedTwentyMTTFsecoonds/sumTwentyMTTF;

% stem(normalizedSummedSixteenMTTFsecoonds)
% sum(normalizedSummedSixteenMTTFsecoonds)

%Normalized MTTR Plots
% figure(3)
% tiledlayout(5,1)
% % 2016
% nexttile
% stem(normalizedSixteenMTTFSeconds)
% title('2016 MTTF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2017
% nexttile
% stem(normalizedSeventeenMTTFSeconds)
% title('2017 MTTF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2018
% nexttile
% stem(normalizedEighteenMTTRSeconds)
% title('2018 MTTF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2019
% nexttile
% stem(normalizedNineteenMTTRSeconds)
% title('2019 MTTF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
% % 2020
% nexttile
% stem(normalizedTwentyMTTRSeconds)
% title('2020 MTTF')
% set(gca, 'XTick', 28:56:672, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})

%Creating 3360x2 matrices
% normalizedMTBFSeconds = cat(1,normalizedSixteenMTBFSeconds,normalizedSeventeenMTBFSeconds,normalizedEighteenMTBFSeconds,normalizedNineteenMTBFSeconds,normalizedTwentyMTBFSeconds);
% combinedNormalizedMTBFSeconds = table(equipment,normalizedMTBFSeconds);
% normalizedMTTRSeconds = cat(1,normalizedSixteenMTTRSeconds,normalizedSeventeenMTTRSeconds,normalizedEighteenMTTRSeconds,normalizedNineteenMTTRSeconds,normalizedTwentyMTTRSeconds);
% combinedNormalizedMTTRSeconds = table(equipment,normalizedMTTRSeconds);

% Plot all MTBFs vs. Year
% figure(4)
% stem(normalizedMTBFSeconds);
% title('2016-2020 MTFB')
% set(gca, 'XTick', 336:672:3360, 'XTickLabel', {'2016', '2017', '2018', '2019', '2020'})
% % Plot all MTTRs vs. Year
% figure(5)
% stem(normalizedMTTRSeconds);
% title('2016-2020 MTTR')
% set(gca, 'XTick', 336:672:3360, 'XTickLabel', {'2016', '2017', '2018', '2019', '2020'})

%Total Porbabilitity of MTBF
%totalProbabilityNormalizedMTBFSeconds = (normalizedSixteenMTBFSeconds+normalizedSeventeenMTBFSeconds+normalizedEighteenMTBFSeconds+normalizedNineteenMTBFSeconds+normalizedTwentyMTBFSeconds)./5;
%sum(totalProbabilityNormalizedMTBFSeconds)

% figure(6)
% stem(totalProbabilityNormalizedMTBFSeconds);
% title('2016-2020 Total Probability MTFB')
%set(gca, 'XTick', 1:1:56, 'XTickLabel', {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 
%    'AA', 'BB', 'CC', 'DD', 'EE', 'FF', 'GG', 'HH', 'II', 'JJ', 'KK', 'LL', 'MM', 'NN', 'OO', 'PP', 'QQ', 'RR', 'SS', 'TT', 'UU', 'VV', 'WW', 'XX', 'YY', 'ZZ',
%    'AAA', 'BBB', 'CCC', 'DDD'})


%Next Steps: Put totalProbabilityNormalizedMTBFSeconds into a 56x5 matrice
%and reduce to a 56x1 to find total probability.
%and 
