package com.qierkang;

import java.util.Scanner;

public class t5 {
	//�Ӽ��̽���������������ϴ���Ǹ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ������");
		int i=sc.nextInt();
		System.out.println("������ڶ�������");
		int a=sc.nextInt();
		if(i>a){
			System.out.println(i);
		}else{
			System.out.println(a);
		}
	}
}