package com.yushengjie;

import java.util.Scanner;

public class Work5 {
	//�Ӽ��̽���һ���ַ����������ַ�����ת���
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
		for(int s=str.length()-1;s>=0;s--){
			System.out.print(str.charAt(s));
	}
	}
}
