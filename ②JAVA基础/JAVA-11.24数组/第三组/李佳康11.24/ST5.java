import java.util.Scanner;

//5 从键盘输入10个数，输出后5个数
public class ST5 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int x[] = new int[10];
			System.out.println("请输入十个整数：");
			for(int i = 0;i<10;i++){
				x[i]=sc.nextInt();
			}
			System.out.println("后5个数为：");
			for(int i = x.length-1;i>=5;i--){
				System.out.print(x[i]+"  ");
			}
		}
}
