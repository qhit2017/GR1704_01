package com.gege;

public class l3 {
	public static void main(String[] args) {
		/*
		 * �������� int [] arr = {7,8,9,12,5}; ��������Ԫ�صĺ��Լ�ƽ��ֵ
		 * 
		 */
		 int [] arr = {7,8,9,12,5};
		 int sum=0;
		 for(int i=0;i<arr.length;i++){
			 sum=sum+arr[i];
		 }
		 System.out.println(sum);
		 System.out.println(sum/arr.length+1);
	}

}
