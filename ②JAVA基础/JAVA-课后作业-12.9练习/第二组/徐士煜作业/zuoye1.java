package zuoye;

import java.util.Scanner;

public class zuoye1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		if(n%3==0){
			System.out.println("�ܱ�����");
		}else if(n%3!=0){
			System.out.println("���ܱ�����");
		}
	}

}
