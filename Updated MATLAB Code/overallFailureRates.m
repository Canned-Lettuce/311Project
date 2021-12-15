%11. Failure Density Function Plots and CDF:
%Equipment 1 2016
hours = 1;
figure(1)
tiledlayout(1,2)
%Overall Equipment Failure Rate vs. Overall Failure Rate 
%1 through 12
nexttile
fplot(@(t) overallEquipmentLambda(1)*exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',2);
hold on
 for i = 2:1:6
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 7:1:12
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) overallLambda*exp(-overallLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 1','\lambda 2','\lambda 3', '\lambda 4', '\lambda 5', '\lambda 6','\lambda 7', '\lambda 8', '\lambda 9', '\lambda 10', '\lambda 11', '\lambda 12','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('Failure Density Function')

nexttile
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',2);
hold on
 for i = 2:1:6
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 7:1:12
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 1','\lambda 2','\lambda 3', '\lambda 4', '\lambda 5', '\lambda 6','\lambda 7', '\lambda 8', '\lambda 9', '\lambda 10', '\lambda 11', '\lambda 12','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('1-e^-\lambda*t') % What is this???

%13 through 24
figure(2)
tiledlayout(1,2)
nexttile
fplot(@(t) overallEquipmentLambda(13)*exp(-overallEquipmentLambda(13)*t),[0 hours],'Linewidth',2);
hold on
 for i = 14:1:18
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 19:1:24
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) overallLambda*exp(-overallLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 13','\lambda 14','\lambda 15', '\lambda 16', '\lambda 17', '\lambda 18','\lambda 19', '\lambda 20', '\lambda 21', '\lambda 22', '\lambda 23', '\lambda 24','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('Failure Density Function')

nexttile
fplot(@(t) 1-exp(-overallEquipmentLambda(13)*t),[0 hours],'Linewidth',2);
hold on
 for i = 14:1:18
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 19:1:24
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 13','\lambda 14','\lambda 15', '\lambda 16', '\lambda 17', '\lambda 18','\lambda 19', '\lambda 20', '\lambda 21', '\lambda 22', '\lambda 23', '\lambda 24','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('1-e^-\lambda*t') % What is this???

%25 through 36
figure(3)
tiledlayout(1,2)
nexttile
fplot(@(t) overallEquipmentLambda(25)*exp(-overallEquipmentLambda(25)*t),[0 hours],'Linewidth',2);
hold on
 for i = 26:1:30
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 31:1:36
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) overallLambda*exp(-overallLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 25','\lambda 26','\lambda 27', '\lambda 28', '\lambda 29', '\lambda 30','\lambda 31', '\lambda 32', '\lambda 33', '\lambda 34', '\lambda 35', '\lambda 36','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('Failure Density Function')

nexttile
fplot(@(t) 1-exp(-overallEquipmentLambda(25)*t),[0 hours],'Linewidth',2);
hold on
 for i = 26:1:30
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 31:1:36
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 25','\lambda 26','\lambda 27', '\lambda 28', '\lambda 29', '\lambda 30','\lambda 31', '\lambda 32', '\lambda 33', '\lambda 34', '\lambda 35', '\lambda 36','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('1-e^-\lambda*t') % What is this???

%25 through 36
figure(4)
tiledlayout(1,2)
nexttile
fplot(@(t) overallEquipmentLambda(37)*exp(-overallEquipmentLambda(37)*t),[0 hours],'Linewidth',2);
hold on
 for i = 38:1:42
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 43:1:48
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) overallLambda*exp(-overallLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 37','\lambda 38', '\lambda 39', '\lambda 40', '\lambda 41','\lambda 42', '\lambda 43', '\lambda 44', '\lambda 45', '\lambda 46', '\lambda 47', '\lambda 48','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('Failure Density Function')

nexttile
fplot(@(t) 1-exp(-overallEquipmentLambda(37)*t),[0 hours],'Linewidth',2);
hold on
 for i = 38:1:42
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 43:1:48
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 37','\lambda 38', '\lambda 39', '\lambda 40', '\lambda 41','\lambda 42', '\lambda 43', '\lambda 44', '\lambda 45', '\lambda 46', '\lambda 47', '\lambda 48','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('1-e^-\lambda*t') % What is this???

%25 through 36
figure(5)
tiledlayout(1,2)
nexttile
fplot(@(t) overallEquipmentLambda(49)*exp(-overallEquipmentLambda(49)*t),[0 hours],'Linewidth',2);
hold on
 for i = 50:1:54
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 55:1:56
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) overallEquipmentLambda(i)*exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) overallLambda*exp(-overallLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 49','\lambda 50', '\lambda 51', '\lambda 52', '\lambda 53','\lambda 54', '\lambda 55', '\lambda 56','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('Failure Density Function')

nexttile
fplot(@(t) 1-exp(-overallEquipmentLambda(49)*t),[0 hours],'Linewidth',2);
hold on
 for i = 50:1:54
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],'Linewidth',2);
 end
  for i = 55:1:56
%      sequencedFDFSixteenMTBFHours(i)
     fplot(@(t) 1-exp(-overallEquipmentLambda(i)*t),[0 hours],':','Linewidth',2);
  end
fplot(@(t) 1-exp(-overallEquipmentLambda(1)*t),[0 hours],'Linewidth',4,'Color','r');
hold off
legend('\lambda 49','\lambda 50', '\lambda 51', '\lambda 52', '\lambda 53','\lambda 54', '\lambda 55', '\lambda 56','\lambda Overall')
title('Overall Equipment Failure Rate vs. Overall Failure Rate')
xlabel('Hours')
ylabel('1-e^-\lambda*t') % What is this???
