package 练习;

import java.util.Scanner;

public class 第二题 {
	//编写JAVA 程序,通过控制台输入两个小数，判断两个小数大小，并输出判断结果。
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输第一个数");
		float i=sc.nextFloat();
		System.out.println("请输入第二个数");
		float c=sc.nextFloat();
		if(c>i){
			System.out.println(c+"大");
		}else if(i>c){
			System.out.println(i+"大");
		}
	}
}
