package com.zhang;

import java.util.Scanner;

public class Demo6 {

	public static void main(String[] args) {
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

