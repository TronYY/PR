function px=Parzenchen(X,h1) 
syms x;  
N=size(X);
N=N(2); 
hN=h1/sqrt(N); 
for i=1:N      
    pNx(i)=chuanghanshu((x-X(i))/hN,2)/hN/N;     
    %ezplot(pNx(i));
    hold on;     
    plot(X(i),0,'*');
    hold on; 
end
px=sum(pNx);
ezplot(px);
hold off; 
