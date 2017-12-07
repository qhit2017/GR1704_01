package com.dangliutao;

public class 第五题while {
//用for 和 while两种方法计算1~100之间奇数的和
	public static void main(String[] args) {
		
		int sum=0;int i=1;
		while(i<=100){
			
			if(i%2!=0){
				sum=sum+i;
				
					
				}
			i++;		
			
		}
				
		System.out.println(sum);
			}
	}


