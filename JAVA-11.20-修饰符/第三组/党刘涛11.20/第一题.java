package 练习;

import java.util.Scanner;

public class 第一题 {
public static void main(String[] args) {
	//编写JAVA 程序，通过控制台输入一个数字
	//判断该数字是正数还是负数，并输出结果
	Scanner sc=new Scanner(System.in);
	System.out.println("请输数");
	int c=sc.nextInt();
	if(c<0){
		System.out.println(c+"该数是负数");
	}else{
		System.out.println(c+"该数是正数");
	}
}
}
