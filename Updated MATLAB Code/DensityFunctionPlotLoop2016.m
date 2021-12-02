l = 0;
h = 2;
for i = 1:1:56
    if i == 1
        figure(i)
        fplot(@(t) sequencedFDFSixteenMTBFHours(1)*exp(-sequencedFDFSixteenMTBFHours(1)*t),[0 h],'Linewidth',2);
%         sequencedFDFSixteenMTBFHours(1)
        hold on
        for k = 2:1:6
%             sequencedFDFSixteenMTBFHours(k)
            fplot(@(t) sequencedFDFSixteenMTBFHours(k)*exp(-sequencedFDFSixteenMTBFHours(k)*t),[0 h],'Linewidth',2);
        end
        for k = 7:1:12
%             sequencedFDFSixteenMTBFHours(k)
            fplot(@(t) sequencedFDFSixteenMTBFHours(k)*exp(-sequencedFDFSixteenMTBFHours(k)*t),[0 h],':','Linewidth',2);
        end
        hold off
%         legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
%         title('Equipment 1 - Failure Density Function - 2016')
%         xlabel('Hours')
%         ylabel('Failure Density Function')
        legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
        formatSpec = "Equipment %d - Failure Density Function - 2016"; 
        title(sprintf(formatSpec,i))
        xlabel('Hours')
        ylabel('Failure Density Function')
        l = l + 12;
    else
        figure(i)
        fplot(@(t) sequencedFDFSixteenMTBFHours(1+l)*exp(-sequencedFDFSixteenMTBFHours(1+l)*t),[0 h],'Linewidth',2);
        sequencedFDFSixteenMTBFHours(1+l)
        hold on
        for k = 2:1:6
            fplot(@(t) sequencedFDFSixteenMTBFHours(k+l)*exp(-sequencedFDFSixteenMTBFHours(k+l)*t),[0 h],'Linewidth',2);
            sequencedFDFSixteenMTBFHours(k+l)
        end
        for k = 7:1:12
            fplot(@(t) sequencedFDFSixteenMTBFHours(k+l)*exp(-sequencedFDFSixteenMTBFHours(k+l)*t),[0 h],':','Linewidth',2);
            sequencedFDFSixteenMTBFHours(k+l)
        end
        hold off
%         legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
%         title('Equipment 1 - Failure Density Function - 2016')
%         xlabel('Hours')
%         ylabel('Failure Density Function')
        legend('\lambda Jan','\lambda Feb','\lambda Mar', '\lambda Apr', '\lambda May', '\lambda Jun','\lambda Jul', '\lambda Aug', '\lambda Sep', '\lambda Oct', '\lambda Nov', '\lambda Dec')
        formatSpec = "Equipment %d - Failure Density Function - 2016"; 
        title(sprintf(formatSpec,i))
        xlabel('Hours')
        ylabel('Failure Density Function')
        l = l + 12;
    end
end
