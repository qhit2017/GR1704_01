package com.lijiakang;

import java.util.Scanner;

/*4 �Ӽ�������1~7�����֣����������1�����������һ�������
 * ����2����������ڶ�........���������7,���������
 * ��(��switch)*/
public class st4 {
			public static void main(String[] args) {
				Scanner sc = new Scanner(System.in);
				System.out.println("������1~7:");
				int i = sc.nextInt();
				
				switch(i){
				case 1:{
					System.out.println("����һ");break;
				}
				case 2:{
					System.out.println("���ڶ�");break;
				}
				case 3:{
					System.out.println("������");break;
				}
				case 4:{
					System.out.println("������");break;
				}
				case 5:{
					System.out.println("������");break;
				}
				case 6:{
					System.out.println("������");break;
				}
				case 7:{
					System.out.println("������");break;
				}
				}
			}
}
