import java.util.Scanner;

/*
 * 从键盘接收两个数，输出较大的那个数
 */
public class Demo2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数");
		int i=sc.nextInt();
		System.out.println("请输入第二个数");
		int h=sc.nextInt();
		if (i>h) {
			System.out.println(i);
		}else if (i<h) {
			System.out.println(h);
		}
	}
}
