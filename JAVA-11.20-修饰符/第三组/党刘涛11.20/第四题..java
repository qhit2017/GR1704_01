package com.dangliutao;

import java.util.Scanner;
import java.util.concurrent.locks.Condition;

public class ������ {
//�Ӽ�������1~7�����֣����������1�����������һ�����������2��
	//��������ڶ�........���������7,�����������(��switch)
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		switch (i){
		case 1:System.out.println("��һ");break;
		case 2:System.out.println("�ܶ�");break;
		case 3:System.out.println("����");break;
		case 4:System.out.println("����");break;
		case 5:System.out.println("����");break;
		case 6:System.out.println("����");break;
		case 7:System.out.println("����");break;
		default:System.out.println("����������ֲ��淶");
		}
	}
}
