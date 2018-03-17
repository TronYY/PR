x=-3:0.01:3;
for i=1:length(x)
    y(i)=Fai(x(i));
end

plot(x,y);
axis([-3 3 0 2])