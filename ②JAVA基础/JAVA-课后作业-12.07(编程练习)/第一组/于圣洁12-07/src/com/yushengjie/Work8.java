package com.yushengjie;

import java.util.Scanner;

public class Work8 {
	public static void main(String[] args) {
		//�Ӽ��̽���һ���ַ����������ַ�����ת���
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
		
		char[] arr=  str.toCharArray();
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]);
		}
		
				
	}

}
