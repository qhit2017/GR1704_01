package com.gege;

import java.util.Scanner;

public class O8 {
	/*
	 * 19�� ��дJava��������һ������N(0<N<=1000),��NΪ����ʱ�����1��N֮��������ͣ���NΪż��ʱ��
	 * ���1��N֮��ż���ĺ�
	 */

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int sum=0;
		
		for(int i=1;i<=n;i++){
			if(n%2!=0&&i%2!=0){
				sum=sum+i;
			}else if(n%2==0&&i%2==0){
				sum=sum+i;
			}
		}
		System.out.println(sum);
	}
}
