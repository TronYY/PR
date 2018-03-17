function y = v_jyfb3( x,samples )  
    n=length(samples);
    m=length(x);
    for t=1:m
        v=0;
        v=sum(samples<x(t));
        
        y(t)=v/n;
    end
end

