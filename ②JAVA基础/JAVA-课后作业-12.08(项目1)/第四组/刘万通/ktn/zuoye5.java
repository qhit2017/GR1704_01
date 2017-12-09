package com.ktn;

import java.util.Scanner;

public class zuoye5 {

	public static void main(String[] args) {
		
		/*
		 * 从键盘接收3个数，输出较大的那个数
		 */
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int a=sc.nextInt();
		int b=sc.nextInt();
		if(i>b&&i>a){
			System.out.println(i);
		}else if(b>i&&b>a){
			System.out.println(b);
		}else if(a>i&&a>b){
			System.out.println(a);
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
}
