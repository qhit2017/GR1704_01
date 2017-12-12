package com.zuoye;

import java.util.Scanner;

public class zuoye {

	//从键盘接收n，判断n是否能被3整除
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数");
		for(int i=sc.nextInt();i>=0;i++){
			if(i%3==0){
				System.out.println("能被三整除");
				break;
			}else{
				System.out.println("不能被三整除");
				break;
			}
		}
		
	}
}
