package com.gege;

public class O7 {
	public static void main(String[] args) {
		/*
		 * �������� int [] arr = {7,8,9,12,5}; �����������ֵ�Լ���Сֵ
		 */
		 int [] arr = {7,8,9,12,5};
		 
		 int max=0;
		 int min=arr[0];
		 for(int i=0;i<arr.length;i++){
			 if(arr[i]<min){
				 min=arr[i];
			 }
		 }
		 System.out.println(min);
		 
	}

}
