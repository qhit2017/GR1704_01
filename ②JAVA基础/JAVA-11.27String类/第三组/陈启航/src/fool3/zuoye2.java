package fool3;

import java.util.Scanner;

public class zuoye2 {
//求1~1000之间能被3整除且不能被7整除的数之和
	public static void main(String[] args) {
		int sum=0;
		for(int i=1;i<=1000;i++){
			if(i%3==0&&i%7!=0){
				sum =sum+i;
			}
		}
		System.out.println(sum);
	}
	
	
	
}
