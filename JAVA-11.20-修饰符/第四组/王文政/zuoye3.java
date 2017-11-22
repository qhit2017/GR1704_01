package com.wangwenzheng;

import java.util.Scanner;

public class zuoye3 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数字:");
		double a = sc.nextDouble();
		System.out.println("请输入第二个数字:");
		double b = sc.nextDouble();
		System.out.println("请输入第三个数字:");
		double c = sc.nextDouble();
		double d ;
		if(a>b&&a>c){
			System.out.println(a);
		}else if(b>a&&b>c){
			System.out.println(b);
		}else if(c>a||c>b){
			System.out.println(c);
		}
	}

}
