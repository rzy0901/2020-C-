clear;
irar=xlsread('C:\CUMCM2020Probelms\C\附件3：银行贷款年利率与客户流失率关系的统计数据.xlsx',1);
%年利率ir 客户流失率ar
ir=irar(:,1);
ar_A=irar(:,2);
ar_B=irar(:,3);
ar_C=irar(:,4);
figure(1);
subplot(131),plot(ir,ar_A,'b','LineStyle','none','Marker','.','MarkerSize',1),xlabel('年利率r_i'),ylabel('客户流失率r_a');
subplot(132),plot(ir,ar_B,'k','LineStyle','none','Marker','.','MarkerSize',1),xlabel('年利率r_i'),ylabel('客户流失率r_a');
subplot(133),plot(ir,ar_C,'r','LineStyle','none','Marker','.','MarkerSize',1),xlabel('年利率r_i'),ylabel('客户流失率r_a');
figure(2);
plot(ir,ar_A,'b','Marker','.','MarkerSize',10);
hold on;
plot(ir,ar_B,'k','Marker','.','MarkerSize',10);
plot(ir,ar_C,'r','Marker','.','MarkerSize',10),xlabel('年利率r_i'),ylabel('客户流失率r_a');
legend('信誉评级A','信誉评级B','信誉评级C');
figure(3);
plot(ir,ar_A,'b','LineStyle','none','Marker','.','MarkerSize',10);
hold on;
plot(ir,ar_B,'k','LineStyle','none','Marker','.','MarkerSize',10);
plot(ir,ar_C,'r','LineStyle','none','Marker','.','MarkerSize',10),xlabel('年利率r_i'),ylabel('客户流失率r_a');
legend('信誉评级A','信誉评级B','信誉评级C');

[b1,bint1,r1,rint1,stats1]=regress(ar_A,[ones(29,1) ir ir ir.^2],0.05)
[b2,bint2,r2,rint2,stats2]=regress(ar_B,[ones(29,1) ir ir ir.^2],0.05)
[b3,bint3,r3,rint3,stats3]=regress(ar_C,[ones(29,1) ir ir ir.^2],0.05)

f1=b1(1)*ones(29,1)+(b1(2)+b1(3))*ir+b1(4)*ir.^2;
f2=b2(1)*ones(29,1)+(b2(2)+b2(3))*ir+b2(4)*ir.^2;
f3=b3(1)*ones(29,1)+(b3(2)+b3(3))*ir+b3(4)*ir.^2;

figure(4);
plot(ir,ar_A,'b','LineStyle','none','Marker','.','MarkerSize',10);
hold on;
plot(ir,ar_B,'k','LineStyle','none','Marker','.','MarkerSize',10);
plot(ir,ar_C,'r','LineStyle','none','Marker','.','MarkerSize',10),xlabel('年利率r_i'),ylabel('客户流失率r_a');
plot(ir,f1,'b');
plot(ir,f2,'k');
plot(ir,f3,'r');
legend('信誉评级A','信誉评级B','信誉评级C','信誉评级A','信誉评级B','信誉评级C');
