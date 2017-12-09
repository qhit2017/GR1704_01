package com.biancheng;

import java.util.Scanner;

public class biancheng6 {

	//从键盘接收3个数，输出较大的那个数
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int i= sc.nextInt();
		System.out.println("请输入第二个数：");
		int o= sc.nextInt();
		System.out.println("请输入第三个数：");
		int p= sc.nextInt();
		
		if(i>o&&i>p){
			System.out.println(i);
		}else if(o>i&&o>p){
			System.out.println(o);
		}else if (p>o&&p>i){
			System.out.println(p);
		}
		
	}
}
