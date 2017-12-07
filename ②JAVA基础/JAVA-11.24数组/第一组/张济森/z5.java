package z26;

import java.util.Scanner;

public class z5 {
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		int [] arr = new int [10];
		for(int i = 1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1] = sc.nextInt();
		
		}for(int a  = 1;a<arr.length;a++){
			if(a>=5){
				System.out.println(arr[a]);
			}
		}
		
	}

}
