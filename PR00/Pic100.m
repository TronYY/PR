n=100;
samples1=randn(1,n);
MIN=min(samples);
MAX=max(samples);
k=0;
for i=MIN:0.01:MAX
    k=k+1;
    x(k)=i;
    y(k)=jyfb3(i,samples1);  
end
plot(x,y)
