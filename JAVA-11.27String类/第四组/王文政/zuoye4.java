package com.������;

import java.util.Scanner;

public class zuoye4 {
	
	public static void main(String[] args) {
		
		/*
		 *  ģ��ʵ�ּ������Ĺ���
    		Ҫ��Ӽ��������һ����
			���������
			����ڶ�����
			Ȼ��������
    		����������7��Ȼ������+���������8 �س�֮�������7+8=15
			����������9��Ȼ������/���������2 �س�֮�������9/2=4
		 */
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ������:");
		int a= sc.nextInt();
		System.out.println("�����������:");
		String b =sc.next();
		System.out.println("������ڶ�����:");
		int c = sc.nextInt();
		if("+".equals(b)){
			System.out.println(a+"+"+c+"="+(a+c));
		}else if("-".equals(b)){
			System.out.println(a+"-"+c+"="+(a-c));
		}else if("*".equals(b)){
			System.out.println(a+"*"+c+"="+(a*c));
		}else if("/".equals(b)){
			System.out.println(a+"/"+c+"="+(a/c));
		}else{
			System.out.println("ֹͣ����");
		}
			
		
	}

}
