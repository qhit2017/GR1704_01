import java.util.Scanner;

/*
 * �Ӽ��̽���������������ϴ���Ǹ���
 */
public class Demo2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ����");
		int i=sc.nextInt();
		System.out.println("������ڶ�����");
		int h=sc.nextInt();
		if (i>h) {
			System.out.println(i);
		}else if (i<h) {
			System.out.println(h);
		}
	}
}
