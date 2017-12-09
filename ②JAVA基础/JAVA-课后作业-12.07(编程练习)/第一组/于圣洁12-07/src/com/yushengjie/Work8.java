package com.yushengjie;

import java.util.Scanner;

public class Work8 {
	public static void main(String[] args) {
		//从键盘接收一个字符串，将该字符串反转输出
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
		
		char[] arr=  str.toCharArray();
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]);
		}
		
				
	}

}
