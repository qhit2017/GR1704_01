package zy;
/*
 * 输出50~80之间所有偶数的乘积

 */
public class zy3 {
	public static void main(String[] args) {
		long sum= 1;
		for(long i=50;i<=80;i++){
			if(i%2==0){
				sum=sum*i;
			}
		}
		System.out.println(sum);
		
	}
}
