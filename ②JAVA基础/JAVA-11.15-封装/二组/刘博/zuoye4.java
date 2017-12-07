package com.bobo;

public class zuoye4 {
	
	public static void main(String[] args) {
		
		
		int sum = 1;
		for(int rs=1;rs<=100;rs++){
			if(rs%2!=0&&rs%3==0){
				System.out.println(rs);
				sum=sum+rs;
			}
		}	System.out.println(sum);
	}

}
