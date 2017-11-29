import java.util.Scanner;


public class shangtian5 {

	public static void main(String[] args) {
		/*
		 * 从键盘输入10个数，输出后5个数
		 */
		
		
		
		Scanner sc=new Scanner(System.in);
		   int arr[]=new int[10];
		   for (int i=1;i<=arr.length;i++){
			   System.out.println("请输入"+i+"个数");
			   arr[i-1]=sc.nextInt();
		   }System.out.println();
			   
			
			for(int i=5;i<arr.length;i++){
				System.out.println(arr[i]);
			}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
