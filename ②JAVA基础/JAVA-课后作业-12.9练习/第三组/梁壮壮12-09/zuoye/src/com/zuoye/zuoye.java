package com.zuoye;

import java.util.Scanner;

public class zuoye {

	//�Ӽ��̽���n���ж�n�Ƿ��ܱ�3����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ����");
		for(int i=sc.nextInt();i>=0;i++){
			if(i%3==0){
				System.out.println("�ܱ�������");
				break;
			}else{
				System.out.println("���ܱ�������");
				break;
			}
		}
		
	}
}
