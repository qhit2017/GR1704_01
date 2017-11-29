package 作业11￥26;

import java.util.Scanner;

public class 第三题 {
//从键盘接收10个数，并存入数组中，然后循环遍 历数组中的元素
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []arr=new int[10];
		for(int i=0;i<arr.length;i++){
			System.out.println("请输出第"+(i+1)+"个数");
		arr[i]=sc.nextInt();
	
		}
		for (int a = 0; a < arr.length; a++) {
			System.out.println(arr[a]);
			
		}
		
		
		
	}
}
