package com.sunyufeng;

import java.util.Scanner;

public class Zuoye5 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		int []arr=new int[10];
		for (int a=1;a<=arr.length;a++){
			System.out.println("请输入第"+a+"个数：");
		 arr [a-1]=sc.nextInt();
		}
		
		for (int i =5;i<arr.length;i++ ){
			System.out.println(arr[i]);
			
		
		}
		
	}
}