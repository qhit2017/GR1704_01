package com.yushengjie;

import java.util.Scanner;

public class Work4 {
	public static void main(String[] args) {
		//�Ӽ��̽���һ�����֣���������ַ�ת���
		Scanner sc = new Scanner(System.in);
		int a =sc.nextInt();
		while(a>10){
			System.out.print(a%10);
			a=a/10;
		}
		System.out.println(a);
	}

}
