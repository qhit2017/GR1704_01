package com.qierkang;

public class t7 {
	//求1~20之间以6结尾的数的乘积
	public static void main(String[] args) {
		int c=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				c=c*i;
			}
		}
		System.out.println(c);
	}

}
