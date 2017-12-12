package com.gege;

public class O7 {
	/*
	 * 18、 编写Java程序，输出所有10000以内个位数为6且同时能被3整除的整数
	 */
	public static void main(String[] args) {
		
		for(int i=1;i<10000;i++){
			if(i%10==6&&i%3==0){
				System.out.println(i);
			}
		}
	}

}
