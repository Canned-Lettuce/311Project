%12. Segment Wheel Failure Rate:
h = 8760;
figure(1)
tiledlayout(1,2)
nexttile
fplot(@(t) segmentWheelDensityCoefficient*exp(-segmentWheelDensityCoefficient*t),[0 h],'Linewidth',2);
legend('\lambda')
title('Segment Wheel - Failure Density Function')
set(gca, 'XTick', 4380:4380:8760, 'XTickLabel', {'1/2 Year', '1 Year'})
ylabel('\lambdae^-^\lambda^t')
nexttile
fplot(@(t) 1-exp(-segmentWheelDensityCoefficient*t),[0 h],'Linewidth',2);
legend('\lambda')
title('Segment Wheel - Cumulative Distribution Function')
set(gca, 'XTick', 4380:4380:8760, 'XTickLabel', {'1/2 Year', '1 Year'})
ylabel('1-e^-^\lambda^t')

midLife = 0;
v = @(t) segmentWheelDensityCoefficient*exp(-segmentWheelDensityCoefficient*t);
w = @(t) 1-exp(-segmentWheelDensityCoefficient*t);
for i = 1:8760
   q(i) = integral(v,0,i);
   r(i) = integral(w,0,i);

end
q = q';
r = r';
