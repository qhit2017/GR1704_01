package com.x;

import java.util.Scanner;

/*
 * 从键盘接收一个3位数，求这个三位数的10位是几？
 */
public class Demo7 {
  public static void main(String[] args) {
	  Scanner sc=new Scanner(System.in);
	  System.out.println("请输入一个三位数");
	  int i=sc.nextInt();
	
		if(1000>i){
		}
		System.out.println(i%100/10);
	}
}

