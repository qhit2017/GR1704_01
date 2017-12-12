package com.lianxi;

public class lianxi4 {

	
	public static void main(String[] args) {
		//求1~20之间以6结尾的数的乘积
		int  iq=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				iq=iq*i;
			}
		}
		System.out.println(iq);
		
		
	}
	
	
}
