package com.qierkang;

import java.util.Scanner;

public class t4 {
	public static void main(String[] args) {
		int sum=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ������");
		int a=sc.nextInt();
		System.out.println("�������������");
		char s=sc.next().charAt(0);
		System.out.println("������ڶ�������");
		int f=sc.nextInt();
		if(s=='+'){		
			sum=a+f;
			System.out.println(a+"+"+f+"="+sum);
		}else if(s=='-'){
			sum=a-f;
			System.out.println(a+"-"+f+""+ "="+sum);
		}else if(s=='*'){
			sum=a*f;
			System.out.println(a+"*"+f+"="+sum);
		}else if(s=='/'){
			sum=a/f;
			System.out.println(a+"/"+f+"="+sum);
		}
		
		
		
	}

}
