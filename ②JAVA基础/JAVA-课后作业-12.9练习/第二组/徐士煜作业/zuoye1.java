package zuoye;

import java.util.Scanner;

public class zuoye1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		if(n%3==0){
			System.out.println("能被整除");
		}else if(n%3!=0){
			System.out.println("不能被整除");
		}
	}

}
