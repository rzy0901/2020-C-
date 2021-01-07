ts=0:50;
x0=[0.02,0.98];%不停改变这两个方程，需要构造一个ode方程
[t,x]=ode45('ill',ts,x0);%注意这里的x不是之前的x，而是ode45求解差分方程的解
[t,x]
figure(1)
plot(t,x(:,1),t,x(:,2)),grid;
figure(2)
plot(x(:,2),x(:,1)),grid;