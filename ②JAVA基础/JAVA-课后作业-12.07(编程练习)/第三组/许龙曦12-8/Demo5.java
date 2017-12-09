package com.x;

import java.util.Scanner;

/*
 * 从键盘接收3个数，输出较大的那个数
 */
public class Demo5 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入第一个数");
	int i=sc.nextInt();
	System.out.println("请输入第二个数");
	int c=sc.nextInt();
	System.out.println("请输入第三个数");
	int t=sc.nextInt();
	
	if (i>c&&i>t) {
		System.out.println(i);
	}else if (c>i&&c>t) {
		System.out.println(c);
	}else if (t>i&&t>i) {
		System.out.println(t);
	}
}
}
