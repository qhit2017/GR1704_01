package ��ϰ;

public class ������ {
//4.��дJAVA ������1000 ��������8 �ı���֮�͡�
	public static void main(String[] args) {
		int sum=0;
		for(int i=1;i<=1000;i++){
			if(i%8==0){
				sum=sum+i;
				System.out.println(i);
			}
		}System.out.println(sum);
	}
}
