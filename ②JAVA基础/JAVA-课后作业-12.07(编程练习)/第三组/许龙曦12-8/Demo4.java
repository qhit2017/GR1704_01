package com.x;

import java.util.Scanner;

/*
 * �Ӽ��̽���������������ϴ���Ǹ���
 */
public class Demo4 {
  public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	System.out.println("�������һ����");
	int i=sc.nextInt();
	System.out.println("������ڶ�����");
	int c=sc.nextInt();
	if (i>c) {
		System.out.println(i);
	}else{
		System.out.println(c);
	}
}
}
