package com.yushengjie;

public class Work10 {
	public static void main(String[] args) {
		//输出1~2017之间的闰年
		for(int i=1;i<=2017;i++){
			if(i%4==0&&i%100!=0||i%400==0){
				System.out.println(i);
			}
		}
	}

}
