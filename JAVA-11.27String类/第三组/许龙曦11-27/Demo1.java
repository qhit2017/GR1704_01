package com.x;
/*
 * 1 输出1~1000之间以6结尾的4的倍数
 */
public class Demo1 {
public static void main(String[] args) {
	for (int i = 0; i <=1000; i++) {
		if (i%10==6&&i%4==0) {
			
			System.out.println(i);
		}
	}
}
}
