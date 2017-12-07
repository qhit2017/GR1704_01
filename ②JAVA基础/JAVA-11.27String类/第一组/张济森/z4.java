package com.zhangjisen;

import java.util.Scanner;

public class z4 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int i = sc.nextInt();
		System.out.println("请输入操作符：");
		char a = sc.next().charAt(0);
		System.out.println("请输入第二个数：");
		int b = sc.nextInt();
		switch(a){
		case '+' :{
		 System.out.println(i+""+a+""+b+"="+(i+b));break;
	}
		case '-' :{
			System.out.println(i+""+a+""+b+"="+(i-b));break;
		}
		case '*' :{
			System.out.println(i+""+a+""+b+"="+i*b);break;
		}
		case '/' :{
			System.out.println(i+""+a+""+b+"="+i/b);break;
		}
		
		
	}

}}
