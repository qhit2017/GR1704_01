package com.qierkang;

import java.util.Scanner;

public class t4 {
	public static void main(String[] args) {
		int sum=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int a=sc.nextInt();
		System.out.println("请输入操作符：");
		char s=sc.next().charAt(0);
		System.out.println("请输入第二个数：");
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
