package com.yushengjie;

public class Work9 {
	public static void main(String[] args) {
		//�����1~10000֮�䣬��8��ͷ�ң����߽�β���ܱ�3��������
		for(int i=10;i<=10000;i++){
			if(i/10==8&&i%10==7&&i%3==0||i/100==8&&i%10==7&&i%3==0||i/1000==8&&i%10==7&&i%3==0){
				System.out.println(i);
			}
		}
		
	}

}
