function drawEquidensity( x,u,sigma,n )%ª≠µ»÷µœﬂ
    X=0;Y=0;
    [X,Y] = meshgrid(sort(x(1,:)),sort(x(2,:)));
    n=length(x);
    for i=1:n
        for j=1:n
           Z(i,j)=([X(i,j);Y(i,j)]-u)'*inv(sigma)* ([X(i,j);Y(i,j)]-u);
        end
    end
    contour(X,Y,Z,'ShowText','on','LevelList',[0:0.5:5]); 

end

