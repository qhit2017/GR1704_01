import java.util.Scanner;


public class diwu {
	
	public static void main(String[] args) {
		/*
		 * 从键盘接收数字n，求1~n之间能被3整除的个数
		 */
		Scanner sc=new Scanner(System.in);
		int c=sc.nextInt();
		int sum=0;
		for(int a=1;a<=c;a++){
			if(a%3==0){
			sum++;
			}
		}
		System.out.println(sum);
	}
}
