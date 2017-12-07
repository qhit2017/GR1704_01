package com.liuchangjiang;
//定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
public class Demo4 {

	public static void main(String[] args) {
		
		int [] arr = {5,9,12,45,18,30};
		int sum = 0;
		int max = arr[0];
		int min = arr[0];
		for(int i=0;i<arr.length;i++){
			sum = sum+arr[i];
			if(max<arr[i]){
				max = arr[i];
				
			}
			if(min>arr[i]){
				min = arr[i];
				
			}
		}
		System.out.println(sum);
		System.out.println(max);
		System.out.println(min);
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
