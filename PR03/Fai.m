function y = Fai( u ) %通过注释可以选择不同的窗函数 

    %y=abs(u)<=0.5;%方窗函数
    y=1/sqrt(2*pi)*exp(-1/2*u*u); %正态窗函数
    %y=exp(-abs(u));%指数窗函数
end

