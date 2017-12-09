package com.gege;

import java.util.Scanner;

public class O8 {
	public static void main(String[] args) {
		/*
		 * 从键盘接收数字n，求1~n之间能被3整除的个
		 */
		Scanner sc=new Scanner(System.in);
		
		int n=sc.nextInt();
		int a=0;
		for(int i=1;i<=n;i++){
			
			if(i%3==0){
			a++;	
			}
		}
		System.out.println(a);
		
	}

}
