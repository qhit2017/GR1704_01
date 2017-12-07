package zy;
/*
 * 求1~1000之间包含7的所有数
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
