
public class zuoye4 {

	//定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	public static void main(String[] args) {
		
		int  arr[]={5,9,12,45,30};
		int sum=0;
		int max=0;
		int min=0;
		for(int i=0;i<arr.length;i++){
			sum  =sum+arr[i];
			if(max<arr[i]){
				max=arr[i];
			}else if(min>arr[i]){
				min=arr[i];
			}
		}
		System.out.println("和:"+sum);
		System.out.println("最大值:"+max);
		System.out.println("最小值:"+min);
		
		}
		
	
	
	
	
}
