package com.zhang;

import java.util.Scanner;

public class Demo4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int a = sc.nextInt();
		System.out.println("请输入第二个数：");
		int b = sc.nextInt();
		if(a>b){
			System.out.println("最大数为"+a);
			
		}else{
			System.out.println("最大数为"+b);
		}
		
		
		
		
		

	}
}
