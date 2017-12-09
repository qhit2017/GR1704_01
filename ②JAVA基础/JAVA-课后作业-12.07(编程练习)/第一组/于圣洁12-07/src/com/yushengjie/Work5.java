package com.yushengjie;

import java.util.Scanner;

public class Work5 {
	public static void main(String[] args) {
		//从键盘接收两个数，输出较大的那个数
		System.out.println("请输入两个数");
		Scanner sc = new Scanner(System.in);
		int a=sc.nextInt();
		int b =sc.nextInt();
		if(a<b){
			System.out.println(b);
		}else{
			System.out.println(a);
		}
	}

}
