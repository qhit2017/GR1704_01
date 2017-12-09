package com.qierkang;

import java.util.Scanner;

public class t12 {
	//从键盘接收数字n，求1~n之间能被3整除的个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数：");
		int n=sc.nextInt();
		int i=0;
		if(n%3==0){
			i++;
			System.out.println(i);
		}
	}
	}
