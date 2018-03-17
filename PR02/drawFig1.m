function [ output_args ] = drawFig1( u1,u2,x,sigma)

x0=(u1+u2)/2;
w=inv(sigma)*(u1-u2);
wt=w';
k=-wt(:,1)*inv(wt(:,2));
b=wt(:,1)*inv(wt(:,2))*x0(1)+x0(2);


%y=k*(x-x0(1))+x0(2);
y=k*x+b;
plot(x,y,'LineWidth',4);
fprintf('y=%fx+%f\n',k,b);

end

