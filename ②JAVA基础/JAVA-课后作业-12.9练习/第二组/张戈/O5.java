package com.gege;

public class O5 {
	/*
	 * 16、 编写Java程序，求1000以内8的倍数的数字由多少个，请输出个数
	 */

	public static void main(String[] args) {
		int j=0;
		for(int i=1;i<=1000;i++){
			if(i%8==0){
				j++;
			}
		}
		System.out.println(j);
	}
}
