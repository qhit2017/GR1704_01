package com.gege;

public class ll {
	public static void main(String[] args) {
		/*
		 * 定义数组 int [] arr = {7,8,9,12,5};用while循环倒着输出数组里的元素
		 */
		int [] arr = {7,8,9,12,5};
		
		int i=arr.length-1;
		while(i>=0){
			System.out.println(arr[i]);
			i--;
		}
	}

}
