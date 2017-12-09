package com.biancheng;

import java.util.Scanner;

public class biancehng9 {

	//从键盘接收数字n，求1~n之间能被3整除的个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数：");
		int n=sc.nextInt();
		int sum=0;
		for(int i=0;i<n;i++){
			if(i%3==0){
				sum=i+1;
			}
			System.out.println(sum);
		}
		
			
	}
}
