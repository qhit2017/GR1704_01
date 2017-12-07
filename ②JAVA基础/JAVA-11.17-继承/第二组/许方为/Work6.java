import java.util.Scanner;
/*
 * 从键盘输入4个整数，编写程序实现对这4 个整数从大到小的顺序排列输出。
 */

public class Work6 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入整数a：");
		int a = sc.nextInt();
		System.out.println("请输入整数b：");
		int b= sc.nextInt();
		System.out.println("请输入整数c：");
		int c = sc.nextInt();
		System.out.println("请输入整数d：");
		int d = sc.nextInt();
 		for(int i=0;i>=0;i++){
 			a--;
 			b--;
 			c--;
 			d--;
 			if(a==0){
 				System.out.println("a");
 				continue;
 			}else if(b==0){
 				System.out.println("b");
 				continue;
 			}else if(c==0){
 			    System.out.println("c");
 			    continue;
 			}else if(d==0){
 				System.out.println("d");
 				continue;
 				
 				
 			}
 			
 			
 			
 		}
		
		
		
	}

}
