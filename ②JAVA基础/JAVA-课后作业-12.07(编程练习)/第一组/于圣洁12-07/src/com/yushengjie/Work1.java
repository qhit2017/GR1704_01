package com.yushengjie;

import java.util.Scanner;

public class Work1 {
	public static void main(String[] args) {
		//从键盘接收n，判断n是否能被3整除
		System.out.println("请输入一个数：");
		Scanner sc =new Scanner(System.in);
		int n=sc.nextInt();
		
			if(n%3==0){
				System.out.println("能整除");
			}
			else{
				System.out.println("不能整除");
			
		}
	}
	

}
