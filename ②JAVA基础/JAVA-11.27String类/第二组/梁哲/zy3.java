package zy;
/*
 * ��1~1000֮�����7��������
 */
public class zy3 {
	public static void main(String[] args) {
		
		for(int i=1;i<=1000;i++){
			if(i%10==7||(i/10)%10==7){
				
				System.out.println(i);
			}
		}
	}
}
