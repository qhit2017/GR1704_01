package com.sun;

import java.util.Scanner;

public class Demo6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个三位数：");
		
		int a = sc.nextInt();
			if(a<1000){
			System.out.println("这个数的十位是："+a%100/10);
			
		}else{
			System.out.println("您输入的数字不规范");
	}
			
	}

	}

