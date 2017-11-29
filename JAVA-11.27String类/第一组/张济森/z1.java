package com.zhangjisen;

public class z1 {
	public static void main(String[] args) {
		
		
		for(int i = 1;i<=1000;i++){
			String  a = ""+i;
			if(a.charAt(a.length()-1)=='6'&&i%4==0){
				System.out.println(i);
			}
		}
		
		
	}

}
