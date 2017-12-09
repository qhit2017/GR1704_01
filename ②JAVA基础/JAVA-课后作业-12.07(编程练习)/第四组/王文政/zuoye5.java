package com.佩斯特;

import java.util.Scanner;

public class zuoye5 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("第一个数:");
		int a = sc.nextInt();
		System.out.println("第二个数:");
		int b =sc.nextInt();
		System.out.println("第三个数:");
		int c = sc.nextInt();
		
		if(a>b&&a>c){
			System.out.println(a);
		}else if(b>a&&b>c){
			System.out.println(b);
		}else{
			System.out.println(c);
		}
	}

}
