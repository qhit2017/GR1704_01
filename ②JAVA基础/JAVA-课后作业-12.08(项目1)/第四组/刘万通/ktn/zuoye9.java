package com.ktn;

public class zuoye9 {
public static void main(String[] args) {
	/*
	 * 请输出1~100之间，以4结尾且能被3整除的数
	 */
	for(int i=1;i<=100;i++){
		if(i%10==4&&i%3==0){
			System.out.println(i);
		}
	}
}
}
