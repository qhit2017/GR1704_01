package com.liuchangjiang;
//���1~100֮���ܱ�3�����������ĺ�
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
