import java.util.Scanner;

//5 �Ӽ�������10�����������5����
public class ST5 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int x[] = new int[10];
			System.out.println("������ʮ��������");
			for(int i = 0;i<10;i++){
				x[i]=sc.nextInt();
			}
			System.out.println("��5����Ϊ��");
			for(int i = x.length-1;i>=5;i--){
				System.out.print(x[i]+"  ");
			}
		}
}
