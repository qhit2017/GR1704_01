package com.gege;

public class l0 {
	public static void main(String[] args) {
		/*
		 * ��1~20֮����6��β�����ĳ˻�
		 */
		int a=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				a=i*a;
			}
		}
		System.out.println(a);
	}

}
