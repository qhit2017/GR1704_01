package com.������;

import java.util.Scanner;

public class zuoye3 {
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int[]arr=new int[10];
		
		for(int rs = 1;rs<=arr.length;rs++){
			System.out.println("�������"+rs+"����");
			arr[rs-1] = sc.nextInt();
		}
			for(int rs=0;rs<arr.length;rs++){
				System.out.println(arr[rs]);
		}
	}
}
