package com.yushengjie;

public class Work10 {
	public static void main(String[] args) {
		//���1~2017֮�������
		for(int i=1;i<=2017;i++){
			if(i%4==0&&i%100!=0||i%400==0){
				System.out.println(i);
			}
		}
	}

}
