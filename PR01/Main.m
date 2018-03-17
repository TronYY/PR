clear;
P=[0.8 0.2];%“正常”、“异常”先验概率
P_cc=[0.03	0.15	0.07	0.16	0.05	0.06	0.19	0.19	0.09	0.14 0.04	0.03	0.17	0.04	0.06	0.18	0.10	0.16	0.06	0.18;
    0.17	0.05	0.13	0.04	0.15	0.14	0.01	0.01	0.11	0.06 0.16	0.17	0.03	0.16	0.14	0.02	0.10	0.04	0.14	0.02];

n=size(P_cc,2);
resultMinER=zeros(2,n);
fprintf('最小错误率贝叶斯决策结果（1正常，2异常）:\n');
for i=1:n
    [resultMinER(1,i),resultMinER(2,i)] = MinER( P,P_cc(:,i));
end
resultMinER(2,:)


resultMinRisk=zeros(2,n);
fprintf('最小风险贝叶斯决策结果（1正常，2异常）:\n');
lam=[0 6;1 0];
for i=1:n
    [resultMinRisk(1,i),resultMinRisk(2,i)] = MinRisk( P,P_cc(:,i),lam);
end
resultMinRisk(2,:)