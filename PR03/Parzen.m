function px=Parzen(t,x,h1,N)
    sum=0;
    hn=h1/sqrt(N);
    for i=1:N
        sum=sum+Fai((t-x(i))/hn);
    end
    px=sum/N/hn;
end