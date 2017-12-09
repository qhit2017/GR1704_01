package com.lianxi;

import java.util.Scanner;

public class lianxi6 {

	public static void main(String[] args) {
		//从键盘接收数字n，求1~n之间能被3整除的个数


		Scanner  sc=new Scanner(System.in);
		int i=sc.nextInt();
		int  w=0;
		for(int  q=1;q<=i;q++){
			if(q%3==0){
				w=w+1;
			}
		}
		System.out.println(w);
		
		
		
		
		
	}
}
