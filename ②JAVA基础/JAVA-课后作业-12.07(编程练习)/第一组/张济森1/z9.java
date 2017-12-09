package com.zjs;

import java.util.Scanner;

public class z9 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int sum =0; 
		for(int i = 1;i<=a;i++){
			if(i%3==0){
				sum++;
				
			}
		}
		System.out.println(sum);
		
		
	}

}
