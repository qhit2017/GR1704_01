package kaoshiti;
/*
 *  4、输出1~100之间能被3整除的奇数的和
 */
public class Demo6 {
    public static void main(String[] args) {
		int sum=0;
		for (int i = 0; i <=100; i++) {
			if (i%2!=0) {
				sum=sum+i;
				
			}
			
		}
		System.out.println(sum);
	}
}
