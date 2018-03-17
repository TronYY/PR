clc;clear all           %清除所有
fid=fopen('data.txt');  %打开数据总文件
B=textscan(fid,'%f %f %f');%把每一列的数据读入到读入到单元数组B中
X=[B{2} B{3}];          %从单元数组B中提取每列数据赋值给矩阵C
n=max(size(X));         %确定读入数据的坐标数目
n1=300;%第一类有300个
n2=200;%第二类有200个
x1=X(1:n1,:)';%第一类样本，2*300矩阵
x2=X(n1+1:n,:)';%第二类样本，2*200矩阵
X=X';
minx=min(X(1,:));
maxx=max(X(1,:));
xn=[-1.0221	3.2155;
5.0000	10.000;
2.4344	4.3210;
3.1932	8.7089;
-0.6212	1.8253]';


figure
hold on

a=input('请输入题目编号');

for i=1:n1
    plot(x1(1,i),x1(2,i),'r*');
end
for i=1:n2
    plot(x2(1,i),x2(2,i),'b+');
end
xlabel('x','color','b');
ylabel('y','color','b');
title('坐标图线','color','m');grid on

u1=[sum(x1,2)/n1];%第一类样本均值
u2=[sum(x2,2)/n2];%第二类样本均值
sigma1=1/n1*bsxfun(@minus,x1,u1)*bsxfun(@minus,x1,u1)';%第一类样本协方差
sigma2=1/n2*bsxfun(@minus,x2,u2)*bsxfun(@minus,x2,u2)';%第二类样本协方差
sigma=1/n*(bsxfun(@minus,x1,u1)*bsxfun(@minus,x1,u1)'+bsxfun(@minus,x2,u2)*bsxfun(@minus,x2,u2)') ;

x=minx:0.1:maxx;


if (a==1)
    drawEquidensity( x1,u1,sigma);
    drawEquidensity( x2,u2,sigma);
    drawFig1(u1,u2,x,sigma);
    for i=1:length(xn)
        result(i)=((xn(:,i)-u1)'*inv(sigma)*(xn(:,i)-u1)>(xn(:,i)-u2)'*inv(sigma)*(xn(:,i)-u2) )+1;
    end
    result
else
    drawEquidensity( x1,u1,sigma1);
    drawEquidensity( x2,u2,sigma2);
    pw1=0.6;
    pw2=0.4;
	[W1,W2,w1,w2,w10,w20,result ]= drawFig2( u1,u2,sigma1,sigma2,pw1,pw2,xn );
    result
end

