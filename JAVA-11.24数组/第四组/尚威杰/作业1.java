
public class 作业1 {

	public static void main(String[] args) {
		
		int arr[]={10,99,66,100,999,666};
		System.out.println("反着输出：");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+" ");
	}
		System.out.println();
		
		System.out.println("正着输出：");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"  ");
		}
		System.out.println();
		
	}
	
}
