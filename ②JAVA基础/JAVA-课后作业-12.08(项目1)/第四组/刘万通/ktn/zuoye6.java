package com.ktn;

import java.util.Scanner;

public class zuoye6 {
public static void main(String[] args) {
	/*
	 * 从键盘接收一个3位数，求这个三位数的10位是几？
	 */
	
	
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
	    System.out.println(i/10%10);
	
}
}
