clear;
%����x0Ϊ25,y0Ϊ2
x0=[25,2];
ts=0:0.1:15;
[t,x]=ode45('shier',ts,x0);
figure(1);
plot(t,x(:,1),'k'),gtext('x(t)');
hold on;
grid on;
plot(t,x(:,2),'b'),gtext('y(t)');
xlabel('ʱ��')
title('������Ⱥx(t)��y(t)ͼ��');
figure(2);
plot(x(:,1),x(:,2));
xlabel('x'),ylabel('y'),title('�����y(x)��ͼ��')
