package com.gege;

import java.util.Scanner;

public class O9 {
	public static void main(String[] args) {
		/*
		 * 从键盘接收一个数字，将这个数字反转输出
		 */
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		if(a<100){
			System.out.println(a/10%10+a%10*10);
		}else if(a<1000){
			System.out.println(a/100%10+a/10%10*10+a%10*100);
		}else if(a<10000){
			System.out.println(a/1000%10+a/100%10*10+a/10%10*100+a%10*1000);
		}else if(a<100000){
			System.out.println(a/10000%10+a/1000%10*10+a/100%10*100+a/10%10*1000+a%10*10000);
		}else if(a<1000000){
			System.out.println(a/100000%10+a/10000%10*10+a/1000%10*100+a/100%10*1000+a/10%10*10000+a%10*100000);
		}
		
		
	}

}
