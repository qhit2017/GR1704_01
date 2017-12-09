package com.biancheng;

import java.util.Scanner;

public class biancheng5 {

	//从键盘接收两个数，输出较大的那个数
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int i= sc.nextInt();
		System.out.println("请输入第二个数：");
		int o= sc.nextInt();
		if(i>o){
			System.out.println(i);
		}else {
			System.out.println(o);
		}
		
		
	}
}
