package com.yushengjie;

import java.lang.reflect.Array;
import java.util.Arrays;

public class Work4 {
	public static void main(String[] args) {
		//�������� Int[] arr = {1,3,5,6,5,6,7,5}���������С�������򣬲����
		int [] arr = {1,3,5,6,5,6,7,5};
		Arrays.sort(arr);
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]);
		}
	}

}
