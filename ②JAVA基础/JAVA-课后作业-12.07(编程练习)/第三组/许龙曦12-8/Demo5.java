package com.x;

import java.util.Scanner;

/*
 * �Ӽ��̽���3����������ϴ���Ǹ���
 */
public class Demo5 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("�������һ����");
	int i=sc.nextInt();
	System.out.println("������ڶ�����");
	int c=sc.nextInt();
	System.out.println("�������������");
	int t=sc.nextInt();
	
	if (i>c&&i>t) {
		System.out.println(i);
	}else if (c>i&&c>t) {
		System.out.println(c);
	}else if (t>i&&t>i) {
		System.out.println(t);
	}
}
}
