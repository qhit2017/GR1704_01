package zy;

import java.util.Scanner;

/*
 * 4 ģ��ʵ�ּ������Ĺ���
    Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15
	����������9��Ȼ������/���������2 �س�֮�������9/2=4
 * 
 * 
 * 
 * 
 */
public class zy4 {
	public static void main(String[] args) {
			int sum=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ������");
		int a =sc.nextInt();
		System.out.println("�������������");
		String b=sc.next();
		
		System.out.println("������ڶ�������");
		int c=sc.nextInt();
		if(b.equals("+")){
				System.out.println(a+"+"+c+"="+(a+c));
		}else if(b.equals("/")){
			System.out.println(a+"/"+c+"="+(a/c));
		}else if(b.equals("-")){
			System.out.println(a+"-"+c+"="+(a-c));
		}else if(b.equals("*")){
			System.out.println(a+"*"+c+"="+(a*c));
		}else if(b.equals("%")){
			System.out.println(a+"%"+c+"="+(a%c));
		}
		
	
	
		
		
	}
}
