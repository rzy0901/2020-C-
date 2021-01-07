clear;
%设置x0为25,y0为2
x0=[25,2];
ts=0:0.1:15;
[t,x]=ode45('shier',ts,x0);
figure(1);
plot(t,x(:,1),'k'),gtext('x(t)');
hold on;
grid on;
plot(t,x(:,2),'b'),gtext('y(t)');
xlabel('时间')
title('两个种群x(t)与y(t)图像');
figure(2);
plot(x(:,1),x(:,2));
xlabel('x'),ylabel('y'),title('相轨线y(x)的图像')
