package com.liuchangjiang;
//ģ��ʵ�ּ������Ĺ���
//Ҫ��Ӽ��������һ����
//���������
//����ڶ�����
//Ȼ��������
//����������7��Ȼ������+���������8 �س�֮�������7+8=15
//����������9��Ȼ������/���������2 �س�֮�������9/2=4
import java.util.Scanner;

public class Demo4 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�����һ������");
		int a = sc.nextInt();
		System.out.println("�����������");
		String c = sc.next();
		System.out.println("����ڶ�������");
		int b = sc.nextInt();
		if("+".equals(c)){
			System.out.println(a+"+"+b+"="+(a+b));
		}else if("-".equals(c)){
			System.out.println(a+"-"+b+"="+(a-b));
		}else if("/".equals(c)){
			System.out.println(a+"/"+b+"="+(a/b));
		}else if("*".equals(c)){
			System.out.println(a+"*"+b+"="+(a*b));
		}else{
			System.out.println("��������");
		}
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		
		
		
		
		
	
		
	}
}
