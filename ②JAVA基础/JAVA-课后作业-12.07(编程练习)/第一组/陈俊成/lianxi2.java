package com.lianxi;

import java.util.Scanner;

public class lianxi2 {
	
	public static void main(String[] args) {
	
		//从键盘接收n，判断n是否能被3整除
		
		Scanner  sc=new Scanner(System.in);
		int i=sc.nextInt();
		if(i%3==0){
			System.out.println("能");
		}else {
			System.out.println("不能");
		}
		
		
	}
	
	
	

}
