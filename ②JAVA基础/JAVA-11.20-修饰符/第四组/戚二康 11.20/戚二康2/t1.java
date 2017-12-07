package ck;

import java.util.Scanner;

public class t1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数：");
		int i=sc.nextInt();
		if(i>=0){
			System.out.println("正数");
		}else {
			System.out.println("负数");
		}
	}

}
