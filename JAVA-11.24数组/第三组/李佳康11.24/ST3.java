import java.util.Scanner;

//3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
public class ST3 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int x[] = new int[10];
			System.out.println("������ʮ��������");
			for(int i = 0;i<10;i++){
				x[i]=sc.nextInt();
			}
			System.out.println("��������е�Ԫ��Ϊ:");
			for(int i = 0;i<x.length;i++){
				System.out.print(x[i]+"  ");
			}
		}
}
