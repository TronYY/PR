clc;clear;
for step=1:4

NN=[1 16 256 16384];
N=NN(step);
x=normrnd(0,1,1,N);%����һά��������
y=zeros(1,N);

t=-4:0.05:4;%�Ա���

in=input('��������Ŀ���');
if (in==1)%��һ��
    h1=[0.25 1 4];%h1�ֱ�ȡ��ͬ��
    %���ݲ�ͬ��h1��������ͼ
    subplot(4,3,1+3*(step-1))
    plot(x,y,'.');
    title('h1=0.25')
    hold on
    subplot(4,3,2+3*(step-1))
    plot(x,y,'.');
    title('h1=1')
    hold on
    subplot(4,3,3+3*(step-1))
    plot(x,y,'.');
    title('h1=4')
    hold on
    
    for k=1:3%ÿ����ͼ����ͼ��
        for i=1:length(t)
            Px(i)=Parzen(t(i),x,h1(k),N); 
        end
        subplot(4,3,k+3*(step-1));
        plot(t,Px);
    end
else%�ڶ���
    plot(x,y,'.');hold on
    for i=1:length(t)
        Px(i)=KNnn(t(i),x,N); 
    end
    plot(t,Px);
end
end