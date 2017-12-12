package com.gege;

public class O6 {
	public static void main(String[] args) {
		/*
		 * 7、 编写Java程序，求1000以内，既能被5整除，同时不能被10整除的所有整数，并打印出来（用while循环实现）
		 */
			int i=1;	 
				while(i<1000){
					if(i%5==0&&i%10!=0){
						System.out.println(i);
						
					}
					i++;
				}
	}

}
