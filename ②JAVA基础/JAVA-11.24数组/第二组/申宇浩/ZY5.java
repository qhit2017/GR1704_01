package com.suzhu;

import java.util.Scanner;

public class dome5 {
//�Ӽ�������10�����������5����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr =new int[10];
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+(i)+"����");
			arr[i-1]=sc.nextInt();
		}
			System.out.println("�������λ��");
			for(int j =5;j<arr.length;j++){
				System.out.print(arr[j]);
			}
		}
		
		
	}

