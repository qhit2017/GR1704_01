package ck;

import java.util.Scanner;

public class t2 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ��С����");
		double i = sc.nextDouble();
		System.out.println("������ڶ���С����");
		double a=sc.nextDouble();
		if(i<a){
		System.out.println(i+"<"+a);	
		}else if(i>a){
			System.out.println(i+">"+a);
		}
	}
	

}
