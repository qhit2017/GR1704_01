package com.wangwenzheng;

import java.util.Scanner;

public class zuoye3 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ������:");
		double a = sc.nextDouble();
		System.out.println("������ڶ�������:");
		double b = sc.nextDouble();
		System.out.println("���������������:");
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
