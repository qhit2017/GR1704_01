package ��;

public class jf {
	public static void main(String[] args) {
		
		/*���1~10000֮����8��ͷ����7��β���ܱ�3��������*/
		t:for(int i=1;i<=10000;i++){
			for(int n=i;n>=1;n=n/10){
				if(n<10&&n!=8){
					continue t;
				}
			}
			if(i%10==7&&i%3==0){
				System.out.println(i);
			}
		}
	}

}
