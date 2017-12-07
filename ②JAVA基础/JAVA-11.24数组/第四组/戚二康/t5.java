package com.qierkang;

import java.util.Scanner;

public class t5 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int i=1;i<arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();		
		}	
		for(int rs=4;rs<arr.length-1;rs++){
			System.out.println(arr[rs]);
	}
	}
}
