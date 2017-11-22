package com.wangwenzheng;

public class zuoye3 {
	
	public static void main(String[] args) {
		
		long sum = 1;
		for(int rs=50;rs<=80;rs++){
			if(rs%2==0){
				System.out.println(rs);
				sum=sum*rs;
				
			}
		}	System.out.println(sum);
	}

}
