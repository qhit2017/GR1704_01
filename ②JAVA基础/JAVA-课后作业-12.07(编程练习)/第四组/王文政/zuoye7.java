package com.佩斯特;

import java.util.Scanner;

public class zuoye7 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("数字");
		int a= sc.nextInt();
		
		System.out.println("这个数的十位数是:"+a%100/10);
	}

}
