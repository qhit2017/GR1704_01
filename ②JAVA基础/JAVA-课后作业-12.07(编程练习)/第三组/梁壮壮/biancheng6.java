package com.biancheng;

import java.util.Scanner;

public class biancheng6 {

	//�Ӽ��̽���3����������ϴ���Ǹ���
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ������");
		int i= sc.nextInt();
		System.out.println("������ڶ�������");
		int o= sc.nextInt();
		System.out.println("���������������");
		int p= sc.nextInt();
		
		if(i>o&&i>p){
			System.out.println(i);
		}else if(o>i&&o>p){
			System.out.println(o);
		}else if (p>o&&p>i){
			System.out.println(p);
		}
		
	}
}
