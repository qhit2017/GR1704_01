package com.qierkang;

public class t4 {
	//定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出
	public static void main(String[] args) {
		
	int[]arr={1,3,5,6,5,6,7,5};
	int a =0;
	for(int i=0;i<arr.length;i++){
		for(int j =i+1;j<arr.length;j++){
			if(arr[i]>=arr[j]){
				a= arr[i];
				arr[i]=arr[j];
				arr[j]=a;
			}
		}
		
	}
	for(int i:arr){
		System.out.println(i);
	}
	}
}
