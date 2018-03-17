function [w,k] = MinER( P,Pcc)
%Input  -P 1*c矩阵,先验概率 (c为分类类别数)
%       -Pcc c*1矩阵,类条件概率 
%Output -w 最大后验概率
%       -k 分类结果

c=size(P,2);
Px=P*Pcc;%求出P(x)
for i=1:c
   Ppost(i)=P(i)*Pcc(i)/Px; 
end
[w,k]=max(Ppost);


