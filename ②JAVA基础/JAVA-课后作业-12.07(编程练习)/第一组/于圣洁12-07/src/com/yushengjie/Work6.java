package com.yushengjie;

public class Work6 {
	public static void main(String[] args) {
		//定义数组 int [] arr = {7,8,9,12,5}; 求数组里最大值以及最小值
		int []arr={7,8,9,12,5};
		int max=0;
		int min=0;
		for(int i=0;i<arr.length;i++){
			if(max<arr[i]){
				max=arr[i];
				System.out.println("最大值是"+max);
			}else if(min>arr[i]){
				min=arr[i];
				System.out.println("最小值是"+min);
			}
			
		}
	}

}
