function [r,k] = MinRisk( P,Pcc,lam)
%Input  -P 1*c矩阵,先验概率 (c为分类类别数)
%       -Pcc c*1矩阵,类条件概率 
%       -lam a*c矩阵,风险函数 (a为决策数)
%Output -r 最小条件期望风险
%       -k 决策结果

c=size(P,2);
Px=P*Pcc;%求出P(x)
for i=1:c
   Ppost(i)=P(i)*Pcc(i)/Px; 
end
R=lam*Ppost';% a*1矩阵，条件期望损失
[r,k]=min(R);


