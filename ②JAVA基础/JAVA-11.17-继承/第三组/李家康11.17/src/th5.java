import java.util.Scanner;

/*5  һ���h�׸߶��������£�ÿ����غ�����ԭ�߶ȵ�һ�룻
       �����£������� ��n�����ʱ�������������ף���n�η�����ߣ�*/
public class th5 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int h = sc.nextInt();
			int n = sc.nextInt();
			int j=1;
			double sum = 2*h;
			double k=0.5;
			for(int i = 1;i<=n;i++){
			j=j*2;
			k=k*2;
			sum=sum/2;
			}
			
			System.out.println(sum);
			System.out.println((j-1)*h/k);
		}
}
