import java.util.Scanner;

/*
 * �Ӽ��̽���3����������ϴ���Ǹ���
 */
public class Demo3 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("�������һ����");
	int i=sc.nextInt();
	System.out.println("������ڶ�����");
	int h=sc.nextInt();
	System.out.println("�������������");
	int j=sc.nextInt();
	if (i>h||i>j) {
		System.out.println(i);
	}else if (i<h||h>j) {
		System.out.println(h);
	}else if (j>i||j>h) {
		System.out.println(j);
	}
}
}
