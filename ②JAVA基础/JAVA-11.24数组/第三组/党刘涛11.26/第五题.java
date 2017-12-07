package 作业11￥26;

import java.util.Scanner;

public class 第五题 {
	
	//从键盘输入10个数，输出后5个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int arr[]=new int[10];
		for(int a=1;a<=10;a++){
			System.out.println("请输入第"+a+"个数");
			arr[a-1] =sc.nextInt();
			
			}
		for(int i=5;i<arr.length;i++){
				System.out.println(arr[i]);
		}
	}
}
