package com.biancheng;

import java.util.Scanner;

public class biancehng1 {
//从键盘接收n，判断n是否能被3整除
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		int i=sc.nextInt();
		
		if(i%3==0){
			System.out.println(i+"能被三整除");
		}else{
			System.out.println(i+"不能被3整除");
		}
				
		
		
	}
	
}
