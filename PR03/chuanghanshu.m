function fu=chuanghanshu(u,t) 
if t==1      
    if abs(u)<=1/2         
        fu=1;     
    else
        fu=0;     
    end
elseif t==2      
    fu=exp(-(u^2)/2)/sqrt(2*pi); 
elseif t==3      
    fu=exp(-abs(u)); 
end
