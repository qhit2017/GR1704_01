import java.util.Scanner;


public class dasdas {
	public static void main(String[] args) {
		/*
		 * �Ӽ��̽�������n�����1~n֮�����к�һλ��ǰһλ��1����  ���磺12,123,234,78,789��
		 */
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		o:for(int i=12;i<=a;i++){
			for(int e=i;e>=10;e=e/10){
				if(e%10-e/10%10!=1){
					continue o;
				}
			}
			System.out.println(i);
		}
	}
	
}
