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
		System.out.println("�ͣ�"+sum);
		System.out.println("���ֵ��"+a);
		System.out.println("��Сֵ��"+b);
	}

}
