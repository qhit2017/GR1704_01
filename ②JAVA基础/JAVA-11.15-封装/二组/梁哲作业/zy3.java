package zy;
/*
 * ���50~80֮������ż���ĳ˻�

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
