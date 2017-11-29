
public class Work4 {
	public static void main(String[] args) {
		int []arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
			
		for(int j=0;j<arr.length;j++){
			if(arr[i]>arr[j]&&max<arr[j]){
				max=arr[i];
			}
			if(min==0){
				min=arr[i];
			}else if(arr[i]<arr[j]&&min>arr[i]){
				min=arr[i];
			}
			{
			
		}
			
		}
         }
		System.out.println("数组中的元素和为："+sum);
		System.out.println("数组中最大值为："+max);
		System.out.println("数组中最小值为："+min);
	}
}