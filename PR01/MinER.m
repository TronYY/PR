function [w,k] = MinER( P,Pcc)
%Input  -P 1*c����,������� (cΪ���������)
%       -Pcc c*1����,���������� 
%Output -w ���������
%       -k ������

c=size(P,2);
Px=P*Pcc;%���P(x)
for i=1:c
   Ppost(i)=P(i)*Pcc(i)/Px; 
end
[w,k]=max(Ppost);


