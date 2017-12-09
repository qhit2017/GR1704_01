package com.zjs;

public class z7 {
	public static void main(String[] args) {
		int [] arr= {7,8,9,12,5};
		int a= arr[0];
		for(int i= 1;i<arr.length;i++){
			if(a>arr[i]){
				a=arr[i];
			} 
			}
		System.out.println(a);
			for(int b = 1;b<arr.length;b++){
				if(a<arr[b]){
					a=arr[b];
				}
			}
			System.out.println(a);
		}
		
	

}
