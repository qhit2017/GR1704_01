package com.x;

import java.util.Scanner;
/*
 * �Ӽ��̽���n���ж�n�Ƿ��ܱ�3����
 */
public class Demo1 {
   public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("������һ����");
	int i=sc.nextInt();
	if (i%3==0) {
		System.out.println("�ܱ�������");
	}else {
		System.out.println("���ܱ�������");
	}
}
}
