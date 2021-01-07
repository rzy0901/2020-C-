clear;
ak=[-76.4101 -67.9331 -63.9422];
bk=[21.9844 20.2072 19.5693];
ck=[-0.6971 -0.6504 -0.6393];
p=[0 0.0263 0.0588]
rik=(2.*bk-sqrt(4.*bk.^2+12*(1-ck).*ak))./(-6*ak)
eta=rik.*(1-ak.*(rik).^2-bk.*rik-ck).*(1-p)
ir=linspace(0.04,0.15,29);
figure(1);
f1=ir.*(1-ak(1)*ir.^2-bk(1)*ir-ck(1)).*(1-p(1));
f2=ir.*(1-ak(2)*ir.^2-bk(2)*ir-ck(2)).*(1-p(2));
f3=ir.*(1-ak(3)*ir.^2-bk(3)*ir-ck(3)).*(1-p(3));
plot(ir,f1,'b');
hold on;
plot(ir,f2,'r');
plot(ir,f3,'k');xlabel('贷款年利率r_i'),ylabel('期望收益效率\eta');
legend('信誉评级A','信誉评级B','信誉评级C');


figure(2);
subplot(131),plot(ir,f1,'b'),hold on;text(rik(1),eta(1),['(' num2str(rik(1)) ',' num2str(eta(1)) ')']),
plot(rik(1),eta(1),'ko','markerfacecolor','b'),
xlabel('贷款年利率r_i'),ylabel('期望收益效率\eta');title('信誉评级A');ylim([0.015 0.041]);
hold off;
subplot(132),plot(ir,f2,'r'),hold on;text(rik(2),eta(2),['(' num2str(rik(2)) ',' num2str(eta(2)) ')']),
plot(rik(2),eta(2),'ko','markerfacecolor','r'),
xlabel('贷款年利率r_i'),ylabel('期望收益效率\eta');title('信誉评级B');ylim([0.02 0.041]);
hold off;
subplot(133),plot(ir,f3,'k'),hold on;text(rik(3),eta(3),['(' num2str(rik(3)) ',' num2str(eta(3)) ')']),
plot(rik(3),eta(3),'ko','markerfacecolor','k'),
xlabel('贷款年利率r_i'),ylabel('期望收益效率\eta');title('信誉评级C');ylim([0.019 0.041]);



