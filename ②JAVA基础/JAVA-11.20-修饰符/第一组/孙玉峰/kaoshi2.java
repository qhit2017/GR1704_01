package 考试题;

import java.util.Scanner;

public class kaoshi2 {
//编写JAVA程序通过控制台输入两个小数判断两个小数大小并输出判断结果。
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		System.out.println("请输入第一个数");
		double i = sc.nextInt();
		System.out.println("请输入第二个数");
		double c = sc.nextInt();
		if (i<c){
			System.out.println("i<c");
		}else{
			System.out.println("i>c");
		}
	}
	
}
