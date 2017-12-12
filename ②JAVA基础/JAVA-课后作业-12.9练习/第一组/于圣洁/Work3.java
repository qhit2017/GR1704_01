package com.yushengjie;

import java.util.Scanner;

public class Work3 {
	public static void main(String[] args) {
		//从键盘接收一个3位数，求这个三位数的10位是几？
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个三位数");
		int a =sc.nextInt();
		System.out.println(a/10%10);
	}

}
