import java.util.Scanner;


public class st6 {
	public static void main(String[] args) {
		//�Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���


		Scanner  sc=new Scanner(System.in);
		int i=sc.nextInt();
		int w=0;
		for(int  j=1;j<=i;j++){
			if(j%3==0){
				w=w+1;
			}
		}
		System.out.println(w);
		
		
		
		
		
	}
}
