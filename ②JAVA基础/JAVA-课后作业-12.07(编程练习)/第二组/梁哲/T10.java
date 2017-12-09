package ti1;

import java.util.Scanner;
/*
 * 从键盘接收数字n，求1~n之间能被3整除的个数
 */
public class T10 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数：");
		int a=sc.nextInt();
		int h=0;
		for(int i=1;i<=a;i++){
			if(i%3==0){
				
				h=h+1;
		}
	}
		System.out.println(h);
}
	
}
