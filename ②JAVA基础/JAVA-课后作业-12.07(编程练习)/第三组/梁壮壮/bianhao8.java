package com.biancheng;

import java.util.Scanner;

public class bianhao8 {

	//�Ӽ��̽���һ��3λ�����������λ����10λ�Ǽ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ����λ��");
		int n=sc.nextInt();
		for(int i=n/10;i<1000;i++){
			System.out.println(i%10);
			break;
		}
		
	}
}
