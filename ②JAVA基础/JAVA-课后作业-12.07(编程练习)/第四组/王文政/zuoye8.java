package com.佩斯特;

import java.util.Scanner;

public class zuoye8 {
	
	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入数字");
		int n =sc.nextInt();
		
		int sf = 0;
		for(int rs = 1;rs<=n;rs++){
			if(rs%3==0){
				
				sf=sf+1;
			}
		}
		System.out.println(sf);
	}

}
