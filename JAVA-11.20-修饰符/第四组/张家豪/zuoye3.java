package com.zhangjiahao;

import java.util.Scanner;

public class zuoye3 {
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		System.out.println("�������һ����");
		int x = sc.nextInt();
		System.out.println("������ڶ�����");
		int y =sc.nextInt();
		System.out.println("�������������");
		int z =sc.nextInt();
		int max=0;
		if(x>y){
			max=x;
		}else{
			max=y;y=x;
		}
		if(max<=z){
			System.out.println(z+">"+max+">"+y);
		}else{
			if(z>=y){
				System.out.println(max+">"+z+">"+"y");
			}else{
				System.out.println(max+">"+y+">"+z);
			}
		}
	}

}
