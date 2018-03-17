function alpha=Percept( class1,class2)%感知准则函数
class1(3,:)=ones(1,size(class1,2));
class2(3,:)=ones(1,size(class2,2));
class2=-class2;
y=[class1,class2];


flag=0;
alpha=ones(3,1);
while (~flag)
    flag=1;
    for i=1:size(y,2)
        if (alpha'*y(:,i)<=0)
           alpha= alpha+y(:,i);
           flag=0;
        end 
    end 
end
    
end

