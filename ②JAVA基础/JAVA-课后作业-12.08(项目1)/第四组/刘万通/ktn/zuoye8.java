package com.ktn;

public class zuoye8 {
/*
 * 求1~20之间以6结尾的数的乘积
 */
	public static void main(String[] args) {
		int sum=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				sum=sum*i;
			
			}
		}	System.out.println(sum);
		
		
		
	}
	
}
