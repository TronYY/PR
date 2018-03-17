clc,clear;
class1=[2.95	6.63;2.53	7.79;3.57	5.65;3.16	5.47]';
class2=[2.58	4.46;2.16	6.22;3.27	3.52]';
in=input('请输入题号');
plot(class1(1,:),class1(2,:),'o')
hold on
plot(class2(1,:),class2(2,:),'*')
ncl=[2.81 5.46;2.90 5.34]';
plot(ncl(1,:),ncl(2,:),'p')


if (in==1) 
    [ wsta,w0 ] = Fisher( class1,class2)
    f =@(x1,x2)  wsta'*[x1;x2]-w0;
    ezplot(f);title('');
    for i=1:size(ncl,2)
         fprintf('待判产品%d:',i);
         if wsta'*ncl(:,i)>w0
             fprintf('合格\n');
         else
             fprintf('不合格\n');
         end
    end
else
    alpha=Percept( class1,class2)
    f =@(x1,x2) alpha(1:2)'*[x1;x2]+alpha(3);
    ezplot(f);title('');
    for i=1:size(ncl,2)
         fprintf('待判产品%d:',i);
         if alpha(1:2)'*ncl(:,i)+alpha(3)>0
             fprintf('合格\n');
         else
             fprintf('不合格\n');
         end
    end
end
hold off