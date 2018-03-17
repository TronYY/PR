function px = KNnn(t,x,N )
	kN=floor(sqrt(N));
    sortDis=sort(abs(x-t));%把样本 离自变量t的距离 进行排序
    VN=sortDis(kN)*2; %扩大体积，当体积包含kN个样本停止，由于是一维，只需*2即可
    px=kN/N/VN;
end

