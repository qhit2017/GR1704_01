package com.王文政;

public class zuoye4 {
	
	public static void main(String[] args) {
		
		
		int[]arr={5,9,12,45,18,30};
		int sum = 0;int max=arr[0];int min=arr[0];
		for(int rs =0;rs<arr.length;rs++){
			sum=sum+arr[rs];
			if(max<arr[rs]){
				max=arr[rs];
			}else if(min>arr[rs]){
				min=arr[rs];}
		
		
			
		
		}
		System.out.println("和:"+sum);
		System.out.println("最大值:"+max);
		System.out.println("最小值:"+min);
	}	

}