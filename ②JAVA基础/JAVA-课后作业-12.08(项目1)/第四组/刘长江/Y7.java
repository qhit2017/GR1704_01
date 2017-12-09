package com.liuchangjiang;

import java.util.Scanner;

public class Y7 {

	public static void main(String[] args) {
//		从键盘接收数字n，求1~n之间能被3整除的个数
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个数：");
		int n = sc.nextInt();
		int g = 0;
		for(int i=1;i<=n;i++){
			if(i%3==0){
				g=g+1;
			}
			
		}
		System.out.println(g);

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
