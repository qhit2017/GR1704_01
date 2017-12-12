package com.gege;

public class O9 {
	/*
	 * 20、 编写Java称故乡，输出1900年到2017年之间，所有的闰年
	 */
	public static void main(String[] args) {
		for(int i=1900;i<=2017;i++){
			if(i%4==0||i%100==0&&i%400!=0){
				System.out.println(i);
			}
		}
	}

}
