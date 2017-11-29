package zhoye;

public class Demo1 {
  public static void main(String[] args) {
	int []arr ={8,51,63,21,47,12};
	System.out.println("正着输出");
		for (int i =0; i <arr.length; i++) {
			System.out.print(arr[i]+" ");
		
		}
		System.out.println();
		System.out.println("倒着输出");
	for (int i =arr.length-1; i>=0 ; i--) {
			System.out.print(arr[i]+" ");
		}	
	
}
}
