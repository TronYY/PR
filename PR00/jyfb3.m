function y = jyfb3( x,samples )  
    n=length(samples);
    v=0;
    for i=1:n
       if samples(i)<x
          v=v+1; 
       end
    end
    y=v/n;
end

