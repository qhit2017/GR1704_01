package com.zhangjisen;

import java.util.Scanner;

public class z3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入三个小数：");
		double a = sc.nextDouble(); 
		double b = sc.nextDouble(); 
		double c = sc.nextDouble(); 
		if(a>=b&&b>=c){
			System.out.println(a+" "+b+" "+c);
		}if(a>=c&&c>=b){
			System.out.println(a+" "+c+" "+b);
		}if(b>=a&&a>=c){
			System.out.println(b+" "+a+" "+c);
		}if(b>=c&&c>=a){
			System.out.println(b+" "+c+" "+a);
		}if(c>=a&&a>=b){
			System.out.println(c+" "+a+" "+b);
		}if(c>=b&&b>=a){
			System.out.println(c+" "+b+" "+c);
		}
			
			
			
			
			
			
		
		
		
		
		
		
		
		
	}
	
	
	

}
