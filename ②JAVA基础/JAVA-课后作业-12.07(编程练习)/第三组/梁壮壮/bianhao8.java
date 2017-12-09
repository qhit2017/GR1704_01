package com.biancheng;

import java.util.Scanner;

public class bianhao8 {

	//从键盘接收一个3位数，求这个三位数的10位是几？
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个三位数");
		int n=sc.nextInt();
		for(int i=n/10;i<1000;i++){
			System.out.println(i%10);
			break;
		}
		
	}
}
