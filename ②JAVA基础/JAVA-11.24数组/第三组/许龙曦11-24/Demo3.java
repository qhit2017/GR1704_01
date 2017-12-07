package zhoye;

import java.util.Scanner;

public class Demo3 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("ÇëÊäÈë10¸öÊı");
	int []arr=new int[10];
	for (int i = 0; i < arr.length; i++) {
		arr[i]=sc.nextInt();
		
		
	}
	for (int a = 0; a <arr.length; a++) {
		System.out.print(arr[a]+" ");
		
	}
}
}
