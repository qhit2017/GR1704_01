package zy;
/*输出1~1000之间以6结尾的4的倍数
 * 
 */
public class zy1 {
	public static void main(String[] args) {
		for(int i=1;i<=1000;i++){
			if(i%10==6&&i%4==0){
				System.out.println(i);
			}
		}
		
		
	}
}
