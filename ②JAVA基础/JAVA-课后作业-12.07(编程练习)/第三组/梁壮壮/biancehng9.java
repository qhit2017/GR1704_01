package com.biancheng;

import java.util.Scanner;

public class biancehng9 {

	//�Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ������");
		int n=sc.nextInt();
		int sum=0;
		for(int i=0;i<n;i++){
			if(i%3==0){
				sum=i+1;
			}
			System.out.println(sum);
		}
		
			
	}
}
