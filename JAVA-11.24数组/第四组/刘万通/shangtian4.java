
public class shangtian4 {

	/*
	 * 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	 */
	
	public static void main(String[] args) {
		
		int arr[]={5,9,12,45,18,30};
		 int sum=0;
		 for(int i=0;i<arr.length;i++){
			
			 sum=sum+arr[i];
		 }System.out.println(sum);
		int max=arr[0];
		int mix=arr[0];
		for(int i=1;i<arr.length;i++){
			if(max<arr[i]){
				max=arr[i];
			}
			if(mix>arr[i]){
			mix=arr[i];
			}
		}
		System.out.println( "最大值是"+max+",最小值是"+mix);
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
}
