package com.yushengjie;

public class Work2 {
	public static void main(String[] args) {
		//�������� int [] arr = {7,8,9,12,5}; �����������ֵ�Լ���Сֵ
		int []arr={7,8,15};
		int max=0;
		int min=0;
		for(int i=0;i<arr.length;i++){
			
			if(max<arr[i]){
				max=arr[i];
			}
			
				if(min==0){
					min=arr[i];
			
				}
	}
		System.out.println("���ֵ"+max);
		System.out.println("��Сֵ"+min);
	}

}
