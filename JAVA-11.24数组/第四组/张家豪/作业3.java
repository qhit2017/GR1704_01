package com.zhangjihahao;

import java.util.Scanner;

public class ��ҵ3 {
	public static void main(String[] args) {
		//�Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
		//�Ӽ��̽�����
			
		Scanner sc =new Scanner(System.in);
				//��̬��ʼ��
				int [] arr =new int [10];
				
				for(int i=1;i<=10;i++){
				System.out.println("�������"+i+"����");	
						arr[i-1] =sc.nextInt();
				}
				for(int i=5;i>10;i--){
					System.out.println(arr[i]);
	}
	}
}
