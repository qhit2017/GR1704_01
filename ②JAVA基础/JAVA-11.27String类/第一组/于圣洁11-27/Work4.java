package com.shengjie;

import java.util.Scanner;

public class Work4 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ������");
		int a =sc.nextInt();
		System.out.println("�������������");
		char b=sc.next().charAt(0);
		System.out.println("������ڶ�������");
		int c =sc.nextInt();
		
		switch(b){
		case '+':System.out.println(a+"+"+c+"="+(a+c));break;
		case '-':System.out.println(a+"-"+c+"="+(a-c));;break;
		case '*':System.out.println(a+"*"+c+"="+(a*c));break;
		case '/':System.out.println(a+"/"+c+"="+(a/c));break;
		}
		
	}

}
