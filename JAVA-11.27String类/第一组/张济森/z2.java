package com.zhangjisen;

public class z2 {
	public static void main(String[] args) {
		int sum = 0;
		for(int i = 1;i<=1000;i++){
			if(i%3==0&&i%7!=0){
				sum = sum +i;
			}
		}System.out.println(sum);
		
		
	}

}
