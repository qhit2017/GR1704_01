package com.zjs;

import java.util.Scanner;

public class z2 {
	public static void main(String[] args) {
		Scanner  sc = new Scanner(System.in);
		System.out.println("清输入一个数n：");
		 int n = sc.nextInt();
		if(n%3==0){
			System.out.println(n+"能被3整除");
		}
		
	}

}
