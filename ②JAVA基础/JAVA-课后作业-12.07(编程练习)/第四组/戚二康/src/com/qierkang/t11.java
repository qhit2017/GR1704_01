package com.qierkang;

public class t11 {
	//求1~10之间偶数的个数
	public static void main(String[] args) {
		int a=0;
		for(int i=1;i<=10;i++){
			if(i%2==0){
				a=a+1;
			}
		}
		System.out.println(a);
	}
}
