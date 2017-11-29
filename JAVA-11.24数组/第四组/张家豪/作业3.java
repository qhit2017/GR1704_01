package com.zhangjihahao;

import java.util.Scanner;

public class 作业3 {
	public static void main(String[] args) {
		//从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
		//从键盘接收数
			
		Scanner sc =new Scanner(System.in);
				//动态初始化
				int [] arr =new int [10];
				
				for(int i=1;i<=10;i++){
				System.out.println("请输入第"+i+"个数");	
						arr[i-1] =sc.nextInt();
				}
				for(int i=5;i>10;i--){
					System.out.println(arr[i]);
	}
	}
}
