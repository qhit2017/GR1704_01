import java.util.Scanner;


public class shangtian3 {

	
	
	public static void main(String[] args) {
		
		
		/*9
		 *  �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
		 */
		
		
		Scanner sc=new Scanner(System.in);
	   int arr[]=new int[10];
	   for (int i=1;i<=arr.length;i++){
		   System.out.println("������"+i+"����");
		   arr[i-1]=sc.nextInt();
	   }System.out.println();
		   
		
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]);
		}
		
		
		
		
		
		
	}
	
	
	
	
	
	
}
