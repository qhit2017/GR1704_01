package com.sunyufeng;

public class Zuoye4 {
	public static void main(String[] args) {
		int []arr ={5,9,12,45,18,30};
		int sum =0;
		for (int a=0;a<arr.length;a++){
			sum = sum+arr[a];
			
		}
		System.out.println(sum);
		int da=arr[0];
		int xiao=arr[0];
		for  (int i=1;i<arr.length;i++){
			if (da<arr[i]){
				da=arr[i];
		}
			if (xiao>arr[i]){
				xiao=arr[i];
		}
		}System.out.println("最大值为："+da+"最小值为："+xiao);
		
	}

}
