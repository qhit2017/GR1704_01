package com.liubo;

import java.util.Scanner;

public class a2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ��С����");
		double i = sc.nextDouble();
		System.out.println("������ڶ���С����");
		double j = sc.nextDouble();
		
		if(i>j){
			System.out.println("��һ�����ȵڶ�������");
		}else if(i==j){
			System.out.println("������һ����");
		}else{
			System.out.println("�ڶ������ȵ�һ����");
		}
	}
}
