package com.佩斯特;

import java.util.Scanner;

public class zuoye1 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if(num%3==0){
			System.out.println("能被3整除");
		}else{
			System.out.println("不能被3整除");
		}
	}

}
