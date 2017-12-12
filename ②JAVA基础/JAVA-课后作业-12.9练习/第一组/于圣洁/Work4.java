package com.yushengjie;

import java.util.Scanner;

public class Work4 {
	public static void main(String[] args) {
		//从键盘接收一个数字，将这个数字反转输出
		Scanner sc = new Scanner(System.in);
		int a =sc.nextInt();
		while(a>10){
			System.out.print(a%10);
			a=a/10;
		}
		System.out.println(a);
	}

}
