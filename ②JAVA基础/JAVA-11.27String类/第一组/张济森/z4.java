package com.zhangjisen;

import java.util.Scanner;

public class z4 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ������");
		int i = sc.nextInt();
		System.out.println("�������������");
		char a = sc.next().charAt(0);
		System.out.println("������ڶ�������");
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
