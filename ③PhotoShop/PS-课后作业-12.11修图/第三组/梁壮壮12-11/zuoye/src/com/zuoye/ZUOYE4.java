package com.zuoye;

import java.rmi.dgc.Lease;
import java.util.Arrays;
import java.util.List;

public class ZUOYE4 {

	//�������� Int[] arr = {1,3,5,6,5,6,7,5}���������С�������򣬲����
	public static void main(String[] args) {
		int[] arr = {1,3,5,6,5,6,7,5};
		Arrays.sort(arr);
		for(int i:arr){
			
			System.out.print(i+" ");
		}
		
	}
}
