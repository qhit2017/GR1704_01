package 作业11￥26;

public class 第四题 {
//定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	public static void main(String[] args) {
		int sum=0;
		int arr[]={5,9,12,45,18,30};
		int min=arr[0];
		int max=arr[0];
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
			if(max<arr[i]){
				max=arr[i];
				
			}else if(min>arr[i]){
				min=arr[i];
			}
		}
		
		System.out.println("最大值是："+max);
		System.out.println("最小值是："+min);
		System.out.println("和是："+sum);
		
}	
}
			 
			

