package com.xulongxi;

import java.util.Scanner;

public class Demo5 {
     public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ����");
		double i=sc.nextDouble();
		System.out.println("������ڶ�����");
		double j=sc.nextDouble();
		if(i>j){
			System.out.println(i+">"+j);
		}else if(j>i){
			System.out.println(j+">"+i);
		}
	}

	
}
