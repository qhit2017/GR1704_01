package com.yushengjie;

import java.util.Arrays;

public class Work1 {
	public static void main(String[] args) {
		//定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出
		int []arr={1,3,5,6,5,6,7,5};
		Arrays.sort(arr);
		for(int i:arr){
			System.out.println(i);
		}
	}

}
