package com.qierkang;

import java.util.Scanner;

public class t5 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int b=1;
		while(b==1){
			System.out.println("1 ���ѧ�� \n2 ��ѯ����ѧ�� \n3 �޸�ѧ��\n4 ɾ��ѧ��\n5 ֹͣ");
			int a=sc.nextInt();
		if(a==1){
			System.out.println("���ѧ���ɹ�");
		}else if(a==2){
			System.out.println("��ѯ����ѷ��͸���");
		}else if(a==3){	
		System.out.println("�޸ĳɹ�");
		}else if(a==4){
			System.out.println("ɾ��ѧ���ɹ�");
		}else if(a==5){
			System.out.println("ϵͳ�ر�");b=2;
		}else {
			System.out.println("����������ֲ���ȷ");
			System.out.println("1 ���ѧ�� \n2 ��ѯ����ѧ�� \n3 �޸�ѧ��\n4 ɾ��ѧ��\n5 ֹͣ");
		}		
		}
	}
}

