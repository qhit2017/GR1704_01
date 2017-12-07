package zhoye;

import java.util.Scanner;

public class Demo5 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("ÇëÊäÈë10¸öÊı");
	int [] arr=new int[10];
	for (int i = 0; i < arr.length; i++) {
		arr[i]=sc.nextInt();
		if (i>=4) {
			System.out.println(arr[i]);
		}
	}
	
}
}
