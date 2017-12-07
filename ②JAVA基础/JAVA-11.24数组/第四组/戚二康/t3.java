package com.qierkang;

import java.util.Scanner;

public class t3 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
			int[]arr=new int[10];
			for(int i=1;i<arr.length;i++){
				System.out.println("请输入第"+i+"个数：");
				arr[i-1]=sc.nextInt();					
			}
			for(int rs=0;rs<arr.length;rs++){
				System.out.println(arr[rs]);
	}
	
	}
}
