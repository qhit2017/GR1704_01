package �κ���ҵ;

public class �κ���ҵ3 {
//�����0~10000֮����3��ͷ����
	public static void main(String[] args) {
		for(int i=1;i<=10000;i++){
			if(i%1000==3||i%100==3||i/10%10==3||i%10==3){
				System.out.println(i);
			}
		}
	}
}
