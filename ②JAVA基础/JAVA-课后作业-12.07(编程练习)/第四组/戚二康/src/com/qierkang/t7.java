package com.qierkang;

public class t7 {
	//��1~20֮����6��β�����ĳ˻�
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
