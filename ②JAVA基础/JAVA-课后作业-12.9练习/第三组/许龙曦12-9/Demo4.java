import java.util.Scanner;

/*
 * �Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���
 */
public class Demo4 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("������һ����");
	int n=sc.nextInt();
	for (int i = 0; i <=n; i++) {
		if (i%3==0) {
		System.out.println(i);	
		}
	}
}
}
