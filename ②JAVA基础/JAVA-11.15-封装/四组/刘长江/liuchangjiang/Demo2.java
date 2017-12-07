package com.liuchangjiang;
//输出1~100之间能被3整除的奇数的和
public class Demo2 {

	public static void main(String[] args) {
		int sum = 0;
		for(int i=1;i<=100;i++){
			if(i%2!=0&&i%3==0){
				System.out.println(i);
				sum = sum+i;
				
			}
			
		}
		System.out.println(sum);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
