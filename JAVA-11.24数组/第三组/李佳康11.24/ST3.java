import java.util.Scanner;

//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
public class ST3 {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int x[] = new int[10];
			System.out.println("请输入十个整数：");
			for(int i = 0;i<10;i++){
				x[i]=sc.nextInt();
			}
			System.out.println("这个数组中的元素为:");
			for(int i = 0;i<x.length;i++){
				System.out.print(x[i]+"  ");
			}
		}
}
