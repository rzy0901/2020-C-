function y=ill(t,x)%x(1)是i，x(2)是s，y为导数，总体来说构造(dy1/dt,...,dyn/dt)=fun(y1,y2,...,yn);
a=1;b=0.3;%a是lamaga，b是u
y=[a*x(1)*x(2)-b*x(1),-a*x(1)*x(2)]';%构造微分方程右边的项（假设左边为导数），列向量 dx(1)/dt=y(1) dx(2)/dt=y(2)
end


