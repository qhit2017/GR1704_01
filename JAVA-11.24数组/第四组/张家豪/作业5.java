package com.zhangjihahao;

import java.util.Scanner;

public class 作业5 {
	public static void main(String[] args) {
		//从键盘输入10个数，输出后5个数
		//从键盘接收数
		Scanner sc =new Scanner(System.in);
		//动态初始化
		int [] arr =new int [10];
		for(int i=1;i<=10;i++){
			System.out.println("请输入第"+i+"个数");	
					arr[i-1] =sc.nextInt();
			}
		int[] arr2=new int[5];
		for(int i=5;i>10;i--){
			System.out.println("请输入第"+i+"个数");
			System.out.println(arr2[i]);
}
	}

}
