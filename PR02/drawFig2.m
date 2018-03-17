function [W1,W2,w1,w2,w10,w20,result ]= drawFig2( u1,u2,sigma1,sigma2,pw1,pw2,xn )

W1=-1/2*inv(sigma1);
W2=-1/2*inv(sigma2);

w1=inv(sigma1)*u1;
w2=inv(sigma2)*u2;

w10=-1/2*u1'*inv(sigma1)*u1-1/2*log(det(sigma1))+log(pw1);
w20=-1/2*u2'*inv(sigma2)*u2-1/2*log(det(sigma2))+log(pw2);

fh = @(x,y) [x;y]'*(W1-W2)*[x;y]+(w1-w2)'*[x;y]+w10-w20;
for i=1:5
   if (fh(xn(1,i),xn(2,i))>0) 
       result(i)=1;
   else
       result(i)=2;
   end
end
h=ezplot(fh);
set(h,'linewidth',4)

end

