import java.util.Scanner;


public class Work3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[]arr=new int[10];
		for(int i=0;i<arr.length;i++){
			System.out.println("请输入第"+(i+1)+"个数:");
			arr[i]=sc.nextInt();
			}
		for(int j=0;j<arr.length;j++){
			System.out.println(arr[j]);
			
	}
	}

}
