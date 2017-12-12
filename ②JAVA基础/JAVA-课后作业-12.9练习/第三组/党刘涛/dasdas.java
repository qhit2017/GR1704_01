import java.util.Scanner;


public class dasdas {
	public static void main(String[] args) {
		/*
		 * 从键盘接收数字n，输出1~n之间所有后一位比前一位大1的数  比如：12,123,234,78,789等
		 */
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		o:for(int i=12;i<=a;i++){
			for(int e=i;e>=10;e=e/10){
				if(e%10-e/10%10!=1){
					continue o;
				}
			}
			System.out.println(i);
		}
	}
	
}
