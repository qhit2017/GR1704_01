package com.liuchangjiang;

import java.util.Scanner;

public class Y6 {

	public static void main(String[] args) {
//		�Ӽ��̽���һ��3λ�����������λ����10λ�Ǽ���
		Scanner sc = new Scanner(System.in);
		System.out.println("������һ����λ����");
		
		int s = sc.nextInt();
		if(s<1000){
			System.out.println("�������ʮλ�ǣ�"+s%100/10);
			
		}else{
			System.out.println("����������ֲ��淶");
		}
			
		}

	}

