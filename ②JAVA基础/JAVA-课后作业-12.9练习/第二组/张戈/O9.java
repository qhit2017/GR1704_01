package com.gege;

public class O9 {
	/*
	 * 20�� ��дJava�ƹ��磬���1900�굽2017��֮�䣬���е�����
	 */
	public static void main(String[] args) {
		for(int i=1900;i<=2017;i++){
			if(i%4==0||i%100==0&&i%400!=0){
				System.out.println(i);
			}
		}
	}

}
