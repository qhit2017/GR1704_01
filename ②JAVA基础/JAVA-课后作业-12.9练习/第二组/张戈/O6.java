package com.gege;

public class O6 {
	public static void main(String[] args) {
		/*
		 * 7�� ��дJava������1000���ڣ����ܱ�5������ͬʱ���ܱ�10��������������������ӡ��������whileѭ��ʵ�֣�
		 */
			int i=1;	 
				while(i<1000){
					if(i%5==0&&i%10!=0){
						System.out.println(i);
						
					}
					i++;
				}
	}

}
