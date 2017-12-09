package com.x;

import java.util.Scanner;
/*
 * 从键盘接收n，判断n是否能被3整除
 */
public class Demo1 {
   public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入一个数");
	int i=sc.nextInt();
	if (i%3==0) {
		System.out.println("能被三整除");
	}else {
		System.out.println("不能被三整除");
	}
}
}
