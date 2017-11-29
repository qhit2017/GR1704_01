package com.shengjie;

import java.util.Scanner;

public class Work4 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int a =sc.nextInt();
		System.out.println("请输入操作符：");
		char b=sc.next().charAt(0);
		System.out.println("请输入第二个数：");
		int c =sc.nextInt();
		
		switch(b){
		case '+':System.out.println(a+"+"+c+"="+(a+c));break;
		case '-':System.out.println(a+"-"+c+"="+(a-c));;break;
		case '*':System.out.println(a+"*"+c+"="+(a*c));break;
		case '/':System.out.println(a+"/"+c+"="+(a/c));break;
		}
		
	}

}
