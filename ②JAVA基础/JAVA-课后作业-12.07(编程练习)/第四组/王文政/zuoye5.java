package com.��˹��;

import java.util.Scanner;

public class zuoye5 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("��һ����:");
		int a = sc.nextInt();
		System.out.println("�ڶ�����:");
		int b =sc.nextInt();
		System.out.println("��������:");
		int c = sc.nextInt();
		
		if(a>b&&a>c){
			System.out.println(a);
		}else if(b>a&&b>c){
			System.out.println(b);
		}else{
			System.out.println(c);
		}
	}

}
