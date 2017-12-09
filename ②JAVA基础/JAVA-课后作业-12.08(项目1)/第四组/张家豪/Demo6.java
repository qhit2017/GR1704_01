package com.zhang;

import java.util.Scanner;

public class Demo6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个三位数：");
		
		int s = sc.nextInt();
		if(s<1000){
			System.out.println("这个数的十位是："+s%100/10);
			
		}else{
			System.out.println("你输入的数字不规范");
		}
			
		}

	}

