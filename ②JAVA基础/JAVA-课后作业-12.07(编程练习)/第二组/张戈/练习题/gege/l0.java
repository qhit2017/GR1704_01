package com.gege;

public class l0 {
	public static void main(String[] args) {
		/*
		 * 求1~20之间以6结尾的数的乘积
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
