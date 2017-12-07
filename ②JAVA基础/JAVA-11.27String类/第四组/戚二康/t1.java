package com.qierkang;

public class t1 {
	public static void main(String[] args) {
		for(int i=1;i<=1000;i++){
			String str=""+i;
			if(i%4==0&&str.charAt(str.length()-1)=='6'){
				System.out.println(str);
			}
		}
		
	}

}
