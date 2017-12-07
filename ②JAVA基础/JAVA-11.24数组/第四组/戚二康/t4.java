package com.qierkang;

public class t4 {
	public static void main(String[] args) {
		int sum=0;
		int[]arr={5,9,12,45,18,30};
		int a=arr[0];
		int b=arr[0];
		for(int i=0;i<arr.length;i++){
			if(a<arr[i]){
				a=arr[i];
			}else
			if(b>arr[i]){
				b=arr[i];
			}
			sum=sum+arr[i];
		}
		System.out.println("和："+sum);
		System.out.println("最大值："+a);
		System.out.println("最小值："+b);
	}

}
