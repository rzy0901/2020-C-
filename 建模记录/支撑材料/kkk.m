clear;
cov=xlsread('C:\Users\23919\Desktop\cov.xls',1);
x=1:123;%公司E1到E123
y=1:123;
[X,Y]=meshgrid(x,y);
mesh(X,Y,cov);
xlabel('公司编号'),ylabel('公司编号'),zlabel('公司E_x与公司E_y的相关系数');


