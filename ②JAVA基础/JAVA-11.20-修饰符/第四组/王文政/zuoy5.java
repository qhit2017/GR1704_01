package com.wangwenzheng;
/*
 * 用for 和 while
 * 两种方法计算1~100之间奇数的和
 */
public class zuoy5 {
	
	public static void main(String[] args) {
		
				int sum=0;
				int rs=1;
				while(rs<=100){
					rs++;
						if(rs%2!=0){
							sum=sum+rs;
							System.out.println(sum);
								
							}
						}
			}
	}


