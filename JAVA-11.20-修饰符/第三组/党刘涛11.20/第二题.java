package ��ϰ;

import java.util.Scanner;

public class �ڶ��� {
	//��дJAVA ����,ͨ������̨��������С�����ж�����С����С��������жϽ����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�����һ����");
		float i=sc.nextFloat();
		System.out.println("������ڶ�����");
		float c=sc.nextFloat();
		if(c>i){
			System.out.println(c+"��");
		}else if(i>c){
			System.out.println(i+"��");
		}
	}
}
