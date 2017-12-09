package com.x;
/*
 * 定义数组 int [] arr = {7,8,9,12,5}; 求数组里最大值以及最小值
 */
public class Demo6 {
 public static void main(String[] args) {
	int []arr={7,8,9,12,5};
	int max=arr[0];
	int min=arr[0];
	for(int i:arr){
		if(max<i){
			max=i;
		}
		if(min >i){
			min=i;
		}
	}
	System.out.println(max);
	System.out.println(min);
	
}
}
