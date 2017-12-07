package com.liubo;
		//5 用for 和 while两种方法计算1~100之间奇数的和
public class b1 {
			public static void main(String[] args) {
			int sum = 0;
			for(int i = 1;i<=100;i=i+2){
				sum=sum+i;
			}
			System.out.println(sum);
			}
}
