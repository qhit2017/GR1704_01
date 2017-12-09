package com.x;
/*
 * 求1~20之间以6结尾的数的乘积
 */
public class Demo9 {
  public static void main(String[] args) {
	int s=1;
	  for (int i = 1; i <=20; i++) {
		if (i%10==6) {
			s=s*i;
		}
	}
	  System.out.println(s);
}
}
