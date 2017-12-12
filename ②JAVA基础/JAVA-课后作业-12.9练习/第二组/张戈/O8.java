package com.gege;

import java.util.Scanner;

public class O8 {
	/*
	 * 19、 编写Java程序，输入一个整数N(0<N<=1000),当N为奇数时，输出1到N之间的奇数和，当N为偶数时，
	 * 输出1到N之间偶数的和
	 */

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int sum=0;
		
		for(int i=1;i<=n;i++){
			if(n%2!=0&&i%2!=0){
				sum=sum+i;
			}else if(n%2==0&&i%2==0){
				sum=sum+i;
			}
		}
		System.out.println(sum);
	}
}
