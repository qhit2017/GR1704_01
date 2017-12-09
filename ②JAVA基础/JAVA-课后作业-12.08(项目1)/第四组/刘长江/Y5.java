package com.liuchangjiang;

import java.util.Scanner;

public class Y5 {

	public static void main(String[] args) {
//		从键盘接收3个数，输出较大的那个数
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int a = sc.nextInt();
		System.out.println("请输入第二个数：");
		int b = sc.nextInt();
		System.out.println("请输入第三个数：");
		int c = sc.nextInt();
		if(a>b&&a>c){
		    System.out.println(a);
		}else if(b>a&&b>c){
			System.out.println(b);
	    }else if(c>a&&c>b){
			System.out.println(c);
			
			
		}
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
