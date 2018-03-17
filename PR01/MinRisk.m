function [r,k] = MinRisk( P,Pcc,lam)
%Input  -P 1*c����,������� (cΪ���������)
%       -Pcc c*1����,���������� 
%       -lam a*c����,���պ��� (aΪ������)
%Output -r ��С������������
%       -k ���߽��

c=size(P,2);
Px=P*Pcc;%���P(x)
for i=1:c
   Ppost(i)=P(i)*Pcc(i)/Px; 
end
R=lam*Ppost';% a*1��������������ʧ
[r,k]=min(R);


