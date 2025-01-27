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

clear temp1 temp2;

temp1(:,:) = Ep1(:,:);
temp2(:,:) = Ep2(:,:);

figure
mesh(QX,QY,temp1)
hold on
mesh(QX,QY,temp2)

