package com.yushengjie;

import java.util.Scanner;

public class Work7 {
	public static void main(String[] args) {
		//求1~20之间以6结尾的数的乘积

         int ji=1;
         for(int i=1;i<=20;i++){
        	 if(i%10==6){
        		 ji=ji*i;
        	 }
         }
         System.out.println(ji);
        		 
	}

}
