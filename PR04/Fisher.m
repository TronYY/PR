function [ wsta,w0 ] = Fisher( class1,class2)
m1=mean(class1,2);
m2=mean(class2,2);
S1=0;S2=0;
for i=1:size(class1,2)
   S1=S1+(class1(:,i)-m1)*(class1(:,i)-m1)';
end
for i=1:size(class2,2)
   S2=S2+(class2(:,i)-m2)*(class2(:,i)-m2)';
end
Sw=S1+S2;
Sb=(m1-m2)*(m1-m2)';

wsta=inv(Sw)*(m1-m2);

for i=1:size(class1,2)
   y1(i)= wsta'*class1(:,i);
end
for i=1:size(class2,2)
   y2(i)= wsta'*class2(:,i);
end
m1_=wsta'*m1;
m2_=wsta'*m2;
w0=(m1_+m2_)/2;


end

