package ��ҵ;

import java.awt.im.InputContext;
import java.util.Scanner;

public class ��ҵ4 {
	//ģ��ʵ�ּ������Ĺ���
    //Ҫ��Ӽ��������һ����
	//���������
	//����ڶ�����
	//Ȼ��������
    //����������7��Ȼ������+���������8 �س�֮�������7+8=15
	//����������9��Ȼ������/���������2 �س�֮�������9/2=4
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ����");
		int a=sc.nextInt();
		System.out.println("�������ַ���");
		int b=sc.nextInt();
		System.out.println("�������������");
		int c=sc.nextInt();
		switch(b){
		case '+':{
			System.out.println("a+c="+(a+b));
			break;
		}
		case'-':{
			System.out.println("a-b="+(a-b));
			break;
		}
			case'*':{
				System.out.println("a*b="+(a*b));
				break;
			}
			case'/':{
				System.out.println("a/b="+(a/b));
				break;
			}
			default:{
				System.out.println("�����д���");
				break;
		}
		}
	}

}
