package ��ҵ11��26;

import java.util.Scanner;

public class ������ {
	
	//�Ӽ�������10�����������5����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int arr[]=new int[10];
		for(int a=1;a<=10;a++){
			System.out.println("�������"+a+"����");
			arr[a-1] =sc.nextInt();
			
			}
		for(int i=5;i<arr.length;i++){
				System.out.println(arr[i]);
		}
	}
}
