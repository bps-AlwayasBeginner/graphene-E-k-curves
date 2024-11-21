clc
clear
a = pi;


qxvals =100;

QX = linspace(-pi/a,pi/a,qxvals) ;

qyvals =100;
QY = linspace(-pi/a,pi/a,qyvals) ;

for qxval= 1:qxvals
    qx = QX(qxval);
    for qyval= 1:qyvals
        qy = QY(qyval);

        Ep1(qxval,qyval) = (qx^2 + qy^2)^(1/2);
        Ep2(qxval,qyval) = -(qx^2 + qy^2)^(1/2);
    end
end
%%
clear temp1 temp2;

temp1(:,:) = Ep1(:,:);
temp2(:,:) = Ep2(:,:);

figure
mesh(QX,QY,temp1)
hold on
mesh(QX,QY,temp2)
% %%
% clc
% clear temp1 temp2
% lw = 4.5;
% cc = 30;
% figure
% 
% temp1(:,:) = Ep1(:,:);% ./ max(max(Ep1));
% temp2(:,:) = Ep2(:,:);% ./ max(max(Ep2));
% plot(QY,temp1,'LineWidth',lw-1.5);
% hold on
% plot(QY,temp2,'LineWidth',lw-1.5);
% 
% plot(zeros(1,qyvals),QY,'LineWidth',lw-1.5,LineStyle="--",Color='black');
% plot(QY,zeros(1,qyvals),'LineWidth',lw-1.5,LineStyle="--",Color='black');
% 
% xlim([min(QY) max(QY)])
% box on
% xlabel('$k$', 'FontSize', cc, 'Interpreter', 'latex','FontName','Times New Roman')
% ylabel('$\epsilon/\epsilon_0$', 'FontSize', cc, 'Interpreter', 'latex','FontName','Times New Roman')
% set(gca, 'LineWidth', lw-2.5, 'FontSize', cc-8,'FontName','Times New Roman');


