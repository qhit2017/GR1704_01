package com.zhangjisen;

import java.awt.Container;
import java.util.Scanner;

public class z5 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int b =1;
		for(;b==1;){
			System.out.println("1 ���ѧ��");
			System.out.println("2 ��ѯ����ѧ��");
			System.out.println("3 �޸�ѧ��");
			System.out.println("4 ɾ��ѧ��");
			System.out.println("5 ֹͣ");
			int i =sc.nextInt();
			if(i>=1&&i<=5){
		switch(i){
		case 1:{
			System.out.println("���ѧ���ɹ�");continue;
		}				
		case 2:{
			System.out.println("��ѯ����ѧ���ɹ�");continue;
		}				
		case 3:{
			System.out.println("�޸�ѧ���ɹ�");continue;
		}				
		case 4:{
			System.out.println("ɾ��ѧ���ɹ�");continue;
		}				
		case 5:{
			System.out.println("ֹͣ");b=2;}		
		}
		}else  {
				System.out.println("����������ֲ��ԣ�");
			
		}
		}
		}
		}
