package com.��˹��;

public class zuoye6 {
	
	public static void main(String[] args) {
		
		int[]arr={7,8,9,12,5};
		int max = arr[0];
		int min = arr[0];
		for(int rs = 0;rs<arr.length;rs++){
			if(max<arr[rs]){
				max=arr[rs];
			}else if(min>arr[rs]){
					min=arr[rs];
		System.out.println("���ֵ:"+max);
		System.out.println("��Сֵ:"+min);
		}
		
}
	}
}
