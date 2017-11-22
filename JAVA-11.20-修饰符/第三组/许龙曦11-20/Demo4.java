package com.xulongxi;

import java.util.Scanner;

/*
 * 判断该数字是正数还是负数，并输入结果
 */
public class Demo4 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个不为0数");
		int i=sc.nextInt();
		if(i>0){
			System.out.println("正数");
			
		}else{
			System.out.println("负数");
		}
	}
     
}
