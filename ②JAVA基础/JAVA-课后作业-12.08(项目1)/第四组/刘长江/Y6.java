package com.liuchangjiang;

import java.util.Scanner;

public class Y6 {

	public static void main(String[] args) {
//		从键盘接收一个3位数，求这个三位数的10位是几？
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

