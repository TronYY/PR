function px = KNnn(t,x,N )
	kN=floor(sqrt(N));
    sortDis=sort(abs(x-t));%������ ���Ա���t�ľ��� ��������
    VN=sortDis(kN)*2; %������������������kN������ֹͣ��������һά��ֻ��*2����
    px=kN/N/VN;
end

