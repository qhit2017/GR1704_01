import java.util.Scanner;


public class diwu {
	
	public static void main(String[] args) {
		/*
		 * �Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���
		 */
		Scanner sc=new Scanner(System.in);
		int c=sc.nextInt();
		int sum=0;
		for(int a=1;a<=c;a++){
			if(a%3==0){
			sum++;
			}
		}
		System.out.println(sum);
	}
}
