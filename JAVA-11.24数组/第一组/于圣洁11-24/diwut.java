package jdjjj;

import java.util.Scanner;

public class diwut {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []arr=new int[10];
			
			for(int i=0;i<arr.length;i++){
				System.out.println("请输入第"+(1+i)+"个数：");
				arr[i]=sc.nextInt();
			}
			for(int j=arr.length-1;j>=5;j--){
				System.out.println(arr[j]);
			}
		
	}

}
