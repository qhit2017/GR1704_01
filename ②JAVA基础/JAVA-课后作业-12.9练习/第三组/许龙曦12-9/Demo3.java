import java.util.Scanner;

/*
 * 从键盘接收3个数，输出较大的那个数
 */
public class Demo3 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入第一个数");
	int i=sc.nextInt();
	System.out.println("请输入第二个数");
	int h=sc.nextInt();
	System.out.println("请输入第三个数");
	int j=sc.nextInt();
	if (i>h||i>j) {
		System.out.println(i);
	}else if (i<h||h>j) {
		System.out.println(h);
	}else if (j>i||j>h) {
		System.out.println(j);
	}
}
}
