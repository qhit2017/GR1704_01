package com.zhangjihahao;

import java.util.Scanner;

public class ��ҵ5 {
	public static void main(String[] args) {
		//�Ӽ�������10�����������5����
		//�Ӽ��̽�����
		Scanner sc =new Scanner(System.in);
		//��̬��ʼ��
		int [] arr =new int [10];
		for(int i=1;i<=10;i++){
			System.out.println("�������"+i+"����");	
					arr[i-1] =sc.nextInt();
			}
		int[] arr2=new int[5];
		for(int i=5;i>10;i--){
			System.out.println("�������"+i+"����");
			System.out.println(arr2[i]);
}
	}

}
