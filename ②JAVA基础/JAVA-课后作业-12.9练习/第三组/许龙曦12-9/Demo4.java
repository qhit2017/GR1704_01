import java.util.Scanner;

/*
 * 从键盘接收数字n，求1~n之间能被3整除的个数
 */
public class Demo4 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入一个数");
	int n=sc.nextInt();
	for (int i = 0; i <=n; i++) {
		if (i%3==0) {
		System.out.println(i);	
		}
	}
}
}
