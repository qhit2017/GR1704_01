package com.gege;

import java.util.Scanner;

public class O6 {

	public static void main(String[] args) {
		/*
		 * �Ӽ��̽���3����������ϴ���Ǹ���
		 */
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int c=sc.nextInt();
		
		if(a>b&&a>c){
			System.out.println(a);
		}else if(b>a&&b>c){
			System.out.println(b);
		}else if(c>a&&c>b){
			System.out.println(c);
		}
		
	}
}
